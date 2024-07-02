#SingleInstance Force
#InstallKeybdHook
SendMode Input
DetectHiddenWindows, On
SetKeyDelay , 50, 30,    
if !A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

Exit

Home::
    ID := WinExist("A")
    ToolTip % ID, 0, 0 
    
    Loop
    {
        ControlSend, , {space}, ahk_id %ID%
        Sleep 600000
    }    
    
return

F2::Pause,Toggle

F1::ExitApp