PID=Plugin.Web.Bind("wqm.exe")
Call Plugin.Web.Go("http://132.96.28.16/ywxt/index.php")
a = MsgBox("登陆zengft选【是】，登陆网络维护室公务选【否】", VbYesNo,"选择登陆帐号")
Rem Start
Call 注册大漠()
'==========以下是验证码识别并输出内容==========
s= dm.Ocr(671, 621,743, 644,"000000-000000|555555-000000|444444-000000|999999-000000|777777-000000|555555-000000|888888-000000|222222-000000|333333-000000|010101-000000",1.0)
Delay 100
If len(s) < 4 Then 
    Call Plugin.Web.LeftClick(701,505)
    Delay 500
    Goto Start
End If
Call Plugin.RegDll.UnReg(".\plugin\大漠插件\dm.dll") '解除大漠
Call Plugin.Web.HtmlInput(s,"id:checkcodestr")
Select case a
Case 6
    Call Plugin.Web.HtmlInput("zengft", "id:sAccount")
    Call Plugin.Web.HtmlInput("","id:sPasswd")
Case 7
    Call Plugin.Web.HtmlInput("wanglwhsgw", "id:sAccount")
    Call Plugin.Web.HtmlInput("","id:sPasswd")
End Select
Call Plugin.Web.HtmlClick("id:LoginButton")

Sub 注册大漠
    PutAttachment ".\plugin","*.dll"
    PutAttachment ".\plugin\大漠插件","*.bmp"
    PutAttachment ".\plugin\大漠插件","*.txt"
    PutAttachment ".\plugin\大漠插件","dm.dll"
    Call Plugin.Regdll.reg(".\plugin\大漠插件\dm.dll")
    Set dm = createobject("dm.dmsoft")
    dm.setpath ".\plugin\大漠插件"
    dm.setdict 0, "dm_soft.txt"
    Delay 50
End Sub

