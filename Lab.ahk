#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input 
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Pixel, Screen
#MaxThreadsPerHotkey 3
#include InterfaceFunctions.ahk
#include MovementFunctions.ahk

global WAIT_TIME = 250
runAmt = 8

F1::
Toggle := !Toggle
Loop
{
    If (!Toggle){
        Break
    }

    clickGoButton()

    Loop runAmt
    {
        restartMap()
        pathingPart1()
        sleep WAIT_TIME
        pathingPart2()
        sleep WAIT_TIME
        pathingPart3()
        sleep WAIT_TIME
        addSplits()
        evAtk()
        removeSplits()
        sleep WAIT_TIME
    }

    menuNav()

    loop runAmt*25
    {
        clickNext()
    }

    sleep WAIT_TIME

    Loop runAmt*60
    {
        imageSearchLogic()
    }

    menuNav2()
}
return

