sc stop AmneziaWGTunnel$VPNbyIL
sc delete AmneziaWGTunnel$VPNbyIL
taskkill /IM "VPNbyIL-service.exe" /F
taskkill /IM "VPNbyIL.exe" /F
exit /b 0
