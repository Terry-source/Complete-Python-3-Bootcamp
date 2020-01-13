#InstallKeybdHook
#Persistent
#HotkeyInterval,5
#NoEnv
SetKeyDelay, ÅE
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%



^j::SendInput ^c
return
^k::SendInput ^v
return
^q::SendInput ^x
return
^;::SendInput ^z
return


RAlt::Left

AppsKey::Right

