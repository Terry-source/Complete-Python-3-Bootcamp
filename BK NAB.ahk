#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, ÅE
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%

^+d::
;SendInput {Click}+{Home}
SendInput ddd, d mmm yy
;SendInput {Enter}
Return

^+!left::
Sleep 1000 ; if you use this with a hotkey, not sleeping will make it so your keyboard input wakes up the monitor immediately
SendMessage 0x112, 0xF170, 2,,Program Manager ; send the monitor into off mode
;wait for a key to be pressed
Input, SingleKey, L1, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause} ;wait for a key to be pressed
SendMessage 0x112, 0xF170, -1,,Program Manager ; send the monitor into on mode
return

^+o::
;SendInput {Click}+{Home}
SendInput {=}SUBTOTAL(9,
;SendInput {Enter}
Return


^+y::
SendInput Thanks for your help
Return

^+r::
SendInput Please find attached.
Return

^+p::
SendInput Please find attached for your review.
Return

*^\::Suspend
return


^+t::
SendInput Thanks, Terry
Return


^+b::
SendInput Best, Terry
Return



^+,::
SendInput terry.yuan@antarescapital.com.au
;SendInput ewa.turek@morganstanley.com
;SendInput {Tab}
;SendInput Wealthmng2014
;SendInput {Enter}
Return


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

