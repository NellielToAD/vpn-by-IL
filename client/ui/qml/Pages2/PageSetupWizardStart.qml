import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

import PageEnum 1.0
import Style 1.0

import "./"
import "../Controls2"
import "../Config"
import "../Controls2/TextTypes"
import "../Components"

PageType {
    id: root

    initialFocusItem: SettingsController.isOnTv() ? startButton : root

    Item {
        id: logoArea

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 16 + PageController.safeAreaTopMargin
        anchors.bottomMargin: 96 + PageController.safeAreaBottomMargin

        ColumnLayout {
            anchors.centerIn: parent
            width: parent.width - 32
            spacing: 24

            Image {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: 200
                Layout.preferredHeight: 200

                source: "qrc:/images/vpnByIlLogo.png"
                sourceSize: Qt.size(200 * Screen.devicePixelRatio, 200 * Screen.devicePixelRatio)
                fillMode: Image.PreserveAspectFit
            }

            H1TextType {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                text: Qt.application.displayName
            }
        }
    }

    ButtonType {
        id: startButton

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.bottomMargin: 8 + PageController.safeAreaBottomMargin

        text: qsTr("Let's get started")

        onClicked: {
            PageController.goToPage(PageEnum.PageSetupWizardConfigSource)
        }
    }
}
