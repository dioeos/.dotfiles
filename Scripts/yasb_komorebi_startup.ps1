Get-Process komorebi -ErrorAction SilentlyContinue | Stop-Process -Force
Get-Process komorebic -ErrorAction SilentlyContinue | Stop-Process -Force
Get-Process yasb -ErrorAction SilentlyContinue | Stop-Process -Force

Start-Sleep -Milliseconds 1

Start-Process "C:\Program Files\komorebi\bin\komorebi.exe" -WindowStyle Hidden

Start-Sleep -Seconds 1

Start-Process "C:\Program Files\komorebi\bin\komorebic.exe" -ArgumentList 'start', '--config', 'C:/Users/eryan/.dotfiles/komorebi/komorebi.json', '--whkd'

Start-Sleep -Seconds 1

Start-Process "C:\Program Files\yasb\yasb.exe" -ArgumentList '--config', 'C:/Users/eryan/.dotfiles/yasb/yasb.toml'

Start-Sleep -Seconds 10

Start-Process "C:\Users\eryan\AppData\Local\Microsoft\WindowsApps\Spotify.exe"
