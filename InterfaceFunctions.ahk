#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Pixel, Screen
#MaxThreadsPerHotkey 3

MAP_LOAD_TIME = 6000

imageSearchLogic(){
    sleep 400
    ImageSearch, FoundX, FoundY, 345, 236, 1257, 905, *16 *TransFF0000 image.png
    if (ErrorLevel = 2){
    MsgBox Could not conduct Ult search.
    Break
    }else if (ErrorLevel = 1){
    MouseClick left, 1509, 919
    }else{
    MouseMove FoundX-5, FoundY-50
    sleep 100
    Send {Click Down}
    sleep 100
    MouseMove 456, 307
    sleep 100
    send {Click up}
    sleep 100
    }
}

restartMap(){
    sleep WAIT_TIME
    MouseMove, 586, 372 
    Sleep WAIT_TIME
    Send {Click Left}   ;;restart
    Sleep WAIT_TIME
    MouseMove, 858, 371
    Sleep WAIT_TIME
    Send {Click Left}   ;;are you sure
    Sleep MAP_LOAD_TIME       
    Send {Click Left}   ;;skips intro cutscene
    Sleep WAIT_TIME          
}

addSplits() {
    send {del down}
    send {end down}
    send {pgdn down}
    sleep 100
    send {del up}
    send {end up}
    send {pgdn up}
    sleep 500

    send {insert down}
    sleep 50
    send {insert up}
    sleep 100
    send {insert down}
    sleep 50
    send {insert up}
    sleep 100
    send {insert down}
    sleep 50
    send {insert up}
    sleep 100
    send {insert down}
    sleep 50
    send {insert up}
    sleep 100
    send {insert down}
    sleep 50
    send {insert up}
}

removeSplits() {
    send {esc}
    sleep 500

    send {u down}
    send {h down}
    send {down down}
    sleep 50
    send {u up}
    send {h up}
    send {down up}
    sleep 500

    send {insert down}
    sleep 50
    send {insert up}
    sleep 100
    send {insert down}
    sleep 50
    send {insert up}
    sleep 50
    send {insert down}
    sleep 50
    send {insert up}
}
