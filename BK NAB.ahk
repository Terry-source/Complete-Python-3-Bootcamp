#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, �E
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%




^F10::

{

Sleep, 200

DllCall("LockWorkStation")

Sleep, 200

SendMessage,0x112,0xF170,2,,Program Manager

}




^\::

Sleep 1000 ; Give user a chance to release keys (in case their release would wake up the monitor again).
; Turn Monitor Off:
SendMessage, 0x112, 0xF170, 2,, Program Manager ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
; Note for the above: Use -1 in place of 2 to turn the monitor on.
; Use 1 in place of 2 to activate the monitor's low-power mode.
return


*^\::Suspend
return

*Enter::
return

*Capslock::
return

Capslock & n::
SendInput ^{Right}
return

Capslock & h::
SendInput ^{Left}
return

Capslock & e::
SendInput {Right}
return

Capslock & a::
SendInput {Left}
return

Capslock & ,::
SendInput {Up}
return

Capslock & o::
SendInput {Down}
return

Capslock & .::
SendInput {End}
return

Capslock & '::
SendInput {Home}
return

Capslock & p::
SendInput {BS}
return

Capslock & u::
SendInput {Enter}
return

Capslock & Space::
SendInput _
return

*BS::
return

^j::SendInput ^c
return
^k::SendInput ^v
return
^q::SendInput ^x
return
^;::SendInput ^z
return





!0:: Send {Volume_Up 1}


!9:: Send {Volume_Down 1}


![:: Send {Volume_Mute 1}
