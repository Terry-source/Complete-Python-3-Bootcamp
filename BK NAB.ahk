#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, ÅE
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%

+F10::Send {VOLUME_MUTE}
+F11::SoundSet,-2
+F12::SoundSet,+2

+F1::
Sleep 1000
SendMessage,0x112,0xF170,2,,ahk_id 0xFFFF
return



^j::SendInput ^c
return
^k::SendInput ^v
return
^q::SendInput ^x
return
^;::SendInput ^z
return


^+'::
SendInput terry89
SendInput {tab}
SendInput broker23
SendInput {Enter}
return

^+b::
SendInput Best, Terry
return

^+t::
SendInput Thanks, Terry
return

^+m::
SendInput Many thanks
return

;LWin::LAlt
;RWin::RAlt

;LAlt::LWin
;RAlt::RWin
