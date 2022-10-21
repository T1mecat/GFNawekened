ctrld = ^d
altw = !w
ctrlaltd = ^!d
fd = {F1}
fo = {F2}
global key
FileCreateDir, C:\Users\%UserName%\Documents\timecat\GFNawakened
FileInstall, config.ini, C:\Users\%UserName%\Documents\timecat\GFNawakened\config.ini, 0
FileInstall, 1.png, C:\Users\%UserName%\Documents\timecat\GFNawakened\1.png, 1
SetWorkingDir, C:\Users\%UserName%\Documents\timecat\GFNawakened
iniread, key, %A_WorkingDir%\config.ini, one, key
iniread, okn, %A_WorkingDir%\config.ini, one, okn

if okn = 0
{
    Gui, Add, Text, x47 y9 w170 h20 , Введите ОКОНЧАНИЕ ссылки
    Gui, Add, Text, x32 y39 w130 h20 , http://dontpad.com/
    Gui, Add, Edit, x132 y39 w120 h20 vKey
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
~!w::
    Zapros(altw)
return
~F1::
    Zapros(fd)
return
~F2::
    Zapros(fo)
return

Zapros(comb)
{
    MouseGetPos, xpos, ypos
    Send {Ctrl down}
    Sleep 10
    Send {Shift down}
    Sleep 10
    Send {Alt down}
    Sleep 10
    Send c
    Send {Ctrl up}
    Sleep 10
    Send {Shift up}
    Sleep 10
    Send {Alt up}
    Sleep 25
    Send {Shift down}
    Sleep 50
    Send {Tab down}
    Sleep 50
    Send {Tab up}
    Sleep 50
    Send {Shift up}
    Sleep 200
    loop, 50
    {
        ImageSearch, ssilwide, ssiltop, 0,0, 1919, 1079,*70 %A_WorkingDir%\1.png
        if errorlevel = 0
        {
            Click, %ssilwide%, %ssiltop%
            Send {Ctrl down}
            Sleep 10
            Send, a
            Sleep 10
            Send {Ctrl up}
            Send, {BackSpace}
            Send {Ctrl down}
            Sleep 10
            Send, v
            Sleep 10
            Send {Ctrl up}
            break
        }
    }
    Sleep 25
    Send {Shift down}
    Sleep 50
    Send {Tab down}
    Sleep 50
    Send {Tab up}
    Sleep 50
    Send {Shift up}
    MouseMove, %xpos%, %ypos%
    Sleep, 2100
    request = % Getfrom()
    response = % GetHTMLbyTag(request, "textarea")
    Send,% (comb)
    Sleep 100
    Send {Ctrl up}
    Send {C up}
    Send {Alt up}
    clipboard = %response%
    Sleep 20
    Send {Ctrl up}
    Send {C up}
    Send {Alt up}
    return
}

Getfrom()
{
    url = http://dontpad.com/%key%
    oHTTP:=ComObjCreate("WinHttp.WinHttpRequest.5.1")
    oHTTP.Open("Get", url , False)
    oHTTP.SetRequestHeader("Content-Type", "application/json")
    oHTTP.SetRequestHeader("X-Access-Key" , "SOMEKEYHERE")
    oHTTP.SetRequestHeader("User-Agent", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)")
    oHTTP.Send()
    Return oHTTP.ResponseText
}

GetHTMLbyTag(HTMLSource, Tag, Occurrence=1, Format=0) {
    ComError := ComObjError(false), `(oHTML := ComObjCreate("HtmlFile")).write(HTMLSource)
    if (Format = 2) {
        if (innerHTML := oHTML.getElementsByTagName(Tag)[Occurrence-1]["innerHTML"]) {
            `(oDOM := ComObjCreate("HtmlFile")).write(innerHTML)
            Return oDOM, ComObjError(ComError)
        } else
            Return "", ComObjError(ComError)
    }
    return (result := oHTML.getElementsByTagName(Tag)[Occurrence-1][(Format ? "innerHTML" : "innerText")]) ? result : "", ComObjError(ComError)
}
