#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe Code - Insiders.exe") ; code and code insiders
~MButton::
MouseGetPos, xpos, ypos

; Assumes code window is 87 pixels down
if (ypos >= 87) {
    SendInput,{Click}{F12}
}

return