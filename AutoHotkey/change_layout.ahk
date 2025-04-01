#Requires AutoHotkey v2.0

#SingleInstance Force
; Hotkey
#1::
{
    Run("powershell.exe -WindowStyle Hidden -Command C:\Users\eryan\.dotfiles\Scripts\change_layout.ps1 rows")
}


#2::
{
    Run("powershell.exe -WindowStyle Hidden -Command C:\Users\eryan\.dotfiles\Scripts\change_layout.ps1 bsp")
}