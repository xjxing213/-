[General]
SyntaxVersion=2
BeginHotkey=113
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=114
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=62213c5b-9cad-4cab-82e8-18e902b9a5cb
Description=我的脚本1
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[UIPackage]
UEsDBBQAAgAIAPR0bk3wBEs9AAQAAAgoAAAJABEAVUlQYWNrYWdlVVQNAAeOM+xbjjPsW44z7FvtWMtOU0EY/k9boC0ILZeCXKRcRXSBiUtjYokEEkBDqwsTTSoXIR4KaQvW6Io3Ye1GE93zACS6cGuiUd/AsJP6zTlTOq0QzswcODbhI3+nnHTON5f/7icbnz9Fv+2+7/5OVbhDfjoshqheeGZwsRAh8vH/D4vFYulx8QI1hT+QAL9Ddtd1kAZICBKEhCGXII2QJkizffXUAonyea18vEDtYYE28JenON2jDMYsvSIZxKAxpXcZp/34R8/ez9dfDD++7oXsRw9phiZIHUEyjBK/7xTeo1HAJKVoVmMFYc7fyW1Hlj+F896kZZqnNK1jlEUr+Sz+KPe9TucF+Mjs9n+VC5w9pjay6/uBFWN7wGfAsfsLRgdNL42HneoRm39Tw34N0oPufF18eLf/S2f/EiZ7JvNV/U7Z//kqcj6nd1bylSzqpOkZmYpraIb/a+R5ilN+n+D/HtEa5SCqK4go7N8v8C+ANU1LdB/nYErG3pL/b+LvdMofEPhT4C8g7mvcvyG7/zrh/ieRfZiQrOJK2hX464X9l/kTuIdFeiHPb+XLLRLn31B1/4ua58/y86AEf5DsHF7EExjFAUZZ/+81GjzmPzj+zK2wNJeMJ9OZXDy5nF1bOSP+kbdPteY/hufJwv8s41MFzP92cJtyqn8hQf9nYXvyVlep/xH+Pqf84WPtP4l1rOIc5KJhF+y/jZgfds7fKPDfRfa/acWALCSDNchFoRj2HyK7LnfK3yTwT2HvGT3/Ix3/mL+6fbR/E9H3OdbAzj2j4v+l+Zsr7j+N889jDewcEtY9lCJBWTdOxhjOP0blvpcT/haBP2G937Y/J3zH6J/RLskfEfiZ/2D5/0H/jk8l/9fNP3Uxk9ncyic2CrrzVXP4Wq9fUtD8vJX7qmif5X+k7S8q6N8D8BfAbiILV0GzAn9rFT/Lv7awb5UuTJcCv9gvt/tP6hVkGBpU4u4+6Ufn0H8aJefxh8XLIP/uRf3J/CVvP7pSf8Yx9kvsv4NcrT+NAYxXJfhj5G792WPZgXP+TvK2/qy0P+36U1r/usjd+rMX47DE+V8W+BlY/P/dtuM/iv9vzi/+T5Kdj0yg/vyqMN/r+On3mF+3/nSj/zCIsU9C/7qp3H9wof6Utr8ecrf+HOE25ZS/l9ytP8cxXpPg7yN3688xjEMS/FfI2/qTxWov6884iflnGvE/Ry95HSiLVgX+AfrX/99qSwRU/L8udP23bv9r/OOq1vye3ZTWfB95izlUPqbV/5iFZKRzUNZ/Z/Z8Q8L+BwX9m7f0fh1WYCr3P2T1f0jgnwbftnL3xfZ/10mu/zJc5f8WcQe5c6y/RwR+FnWyFrPJu19n7/9Gq/yPLmT53UYt8/8FUEsBAhcLFAACAAgA9HRuTfAESz0ABAAACCgAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHjjPsW1BLBQYAAAAAAQABAEAAAAA4BAAAAAA=


[Script]

str=Form1.InputBox1.Text
arr = split(str, ",")

For Each a In arr
    //click bts
    Call cz(779,340)
    //Ctrl+A
    KeyDown 17, 1
    KeyPress 65, 1
    KeyUp 17, 1

    Plugin.Sys.SetCLB a
    //Ctrl+V input btsname
    KeyDown 17, 1
    KeyPress 86, 1
    KeyUp 17, 1
    ////查询
    Call cz(1160, 388)
    Delay 300
    //勾选
    Call cz(223,436 )
    //升级
    Call cz(1192,387)
    //确定
    Call cz(874,693)
        //确定
    Call cz(717,552)
    Delay 800
Next

Sub cz(x, y)
	
    MoveTo x,y
    LeftClick 1
    Delay 300
	
End Sub
