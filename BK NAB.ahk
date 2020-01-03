#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, ÅE
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

