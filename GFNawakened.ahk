SetTitleMatchMode, 2
CoordMode, Mouse, Screen
ctrld = ^d
;altw = !w
ctrlaltd = ^!d
fd = {F1}
fo = {F2}
global key
FileCreateDir, C:\Users\%UserName%\Documents\timecat\GFNawakened
FileInstall, config.ini, C:\Users\%UserName%\Documents\timecat\GFNawakened\config.ini, 0
SetWorkingDir, C:\Users\%UserName%\Documents\timecat\GFNawakened
iniread, key, %A_WorkingDir%\config.ini, one, key
iniread, okn, %A_WorkingDir%\config.ini, one, okn


if okn = 0
{
    Gui, Add, Text, x47 y9 w170 h20 , Введите название чата
    Gui, Add, Edit, x82 y39 w120 h20 vKey
    Gui, Add, Button, x82 y69 w100 h30 , Готово
    Gui, Show, x397 y207 h107 w269, GFNawakened
    Return

    GuiClose:
    ExitApp

    ButtonГотово:
        Gui, Submit
        IniWrite, 1, %A_WorkingDir%\config.ini, one, okn
        IniWrite, %key%, %A_WorkingDir%\config.ini, one, key
    return
}
else
{

}
return

~^d::
    Zapros(ctrld)
return
~^!d::
    Zapros(ctrlaltd)
return
;~!w::
;    Zapros(altw)
return
~F1::
    Zapros(fd)
return
~F2::
    Zapros(fo)
return

Zapros(comb)
{
    KeyWait Control
    BlockInput On
    MouseGetPos, xpos, ypos
    Send {Ctrl down}{Shift down}{Alt down}{Sleep 10}c{Sleep 10}{Ctrl up}{Shift up}{Alt up}
    Sleep 25
    Send {Shift down}
    Sleep 50
    Send {Tab down}
    Sleep 50
    Send {Tab up}
    Sleep 50
    Send {Shift up}
    Sleep 200
    Send {Ctrl down}
    Sleep 10
    Send, v
    Sleep 10
    Send {Ctrl up}
    Sleep 25
    Send {Enter}
    Sleep 25
    Send {Shift down}
    Sleep 50
    Send {Tab down}
    Sleep 50
    Send {Tab up}
    Sleep 50
    Send {Shift up}
    MouseMove, %xpos%, %ypos%
    BlockInput, off
    Sleep 100
    WinActivate, %key%
    Send, {Ctrl down}a{Ctrl up}{sleep 20}{Ctrl down}{sleep 20}c{sleep 20}{Ctrl up}
    pepe := % Clipboard
    StringReplace, pepe, pepe, Класс,ª, All
    StringSplit, qq, pepe, ª
    pepe2 := qq%qq0%
    StringReplace, pepe2, pepe2,%A_Space%предмета:,Класс предмета:, All
    StringReplace, pepe2, pepe2, Найти по имени,ª, All
    StringSplit, ww, pepe2, ª
    WinActivate, GeForce NOW
    request = %ww1%
    Send,% (comb)
    Sleep 100
    Send {Ctrl up}
    Send {C up}
    Send {Alt up}
    clipboard = %request%
    Sleep 20
    Send {Ctrl up}
    Send {C up}
    Send {Alt up}
return
}

