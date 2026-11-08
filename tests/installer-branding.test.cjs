const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const test = require('node:test');

const root = path.resolve(__dirname, '..');

function controller(existingFiles, processes = '') {
    const context = {
        installer: {
            value: key => ({ Name: 'VPN by IL', RootDir: 'C:/', os: 'win' })[key],
            fileExists: file => existingFiles.includes(file),
            execute: command => {
                assert.equal(command, 'tasklist');
                return [processes, 0];
            },
        },
    };
    vm.createContext(context);
    vm.runInContext(fs.readFileSync(path.join(root, 'deploy/installer/qif/controlscript.js'), 'utf8'), context);
    return context;
}

test('an installed Amnezia does not trigger the previous-installation prompt', () => {
    const context = controller([
        'C:/Program Files/AmneziaVPN/maintenancetool.exe',
        'C:/Program Files (x86)/AmneziaVPN/maintenancetool.exe',
    ]);
    assert.equal(context.appInstalled(), false);
    assert.equal(context.appInstalledUninstallerPath, 'C:/Program Files/VPNbyIL/maintenancetool.exe');
    assert.equal(context.appInstalledUninstallerPath_x86, 'C:/Program Files (x86)/VPNbyIL/maintenancetool.exe');
});

test('only VPN by IL is detected as the previous installation', () => {
    assert.equal(controller(['C:/Program Files/VPNbyIL/maintenancetool.exe']).appInstalled(), true);
    assert.equal(controller(['C:/Program Files (x86)/VPNbyIL/maintenancetool.exe']).appInstalled(), true);
});

test('running Amnezia does not trigger the close-application prompt', () => {
    assert.equal(controller([], 'AmneziaVPN.exe 1234').appProcessIsRunning(), false);
    assert.equal(controller([], 'VPNbyIL.exe 1234').appProcessIsRunning(), true);
});

test('installation creates VPN by IL shortcuts and its own service', () => {
    const operations = [];
    const context = {
        console: { log() {} },
        systemInfo: { kernelType: 'winnt' },
        QDesktopServices: { DesktopLocation: 0, storageLocation: () => 'C:/Desktop' },
        installer: {
            value: key => ({ Name: 'VPN by IL', RootDir: 'C:/', TargetDir: 'C:/Program Files/VPNbyIL', AllUsersStartMenuProgramsPath: 'C:/StartMenu' })[key],
            findPath: () => 'C:/Windows/System32/msvcp140.dll',
        },
        component: {
            createOperations() {},
            addOperation: (...args) => operations.push(args),
            addElevatedOperation: (...args) => operations.push(args),
        },
    };
    vm.createContext(context);
    vm.runInContext(fs.readFileSync(path.join(root, 'deploy/installer/qif/componentscript.js'), 'utf8'), context);
    context.Component.prototype.createOperations();
    const shortcuts = operations.filter(args => args[0] === 'CreateShortcut');
    assert.equal(shortcuts.length, 2);
    for (const shortcut of shortcuts) {
        assert.equal(shortcut[1], '@TargetDir@/VPNbyIL.exe');
        assert.ok(shortcut[2].endsWith('/VPN by IL.lnk'));
    }
    const service = operations.find(args => Array.isArray(args[1]));
    assert.equal(service[1][2], 'VPNbyIL-service');
    assert.ok(service[1][4].endsWith('VPNbyIL-service.exe'));
    assert.doesNotMatch(JSON.stringify(operations), /AmneziaVPN/);
});

test('install and uninstall cleanup never target Amnezia processes, services or settings', () => {
    for (const filename of ['post_install.cmd', 'post_uninstall.cmd']) {
        const script = fs.readFileSync(path.join(root, 'deploy/data/windows', filename), 'utf8');
        assert.doesNotMatch(script, /AmneziaVPN/i);
        assert.match(script, /VPNbyIL-service/);
        assert.match(script, /AmneziaWGTunnel\$VPNbyIL/);
    }
});
