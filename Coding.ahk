#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, ÅE
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%




*^\::Suspend
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
