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
MacroID=41e52c5c-90fe-4941-8f2e-8f9b7a8323eb
Description=刷成绩
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

[Attachment]
UEsDBBQAAgAIAEA0nkm7lkomlQAAAAINAAAKABEAz8LSu8ziLmJtcFVUDQAH2P9lWKv+ZVir/mVYc/Jl4mUAAzMg1gBiEyAWBWJGBgmw+BkeBgzwqkF0FFEdff36lUbmfMUBBtZtpLqB1m5DDihchpNqF3Xdhsc9ZFhEC7ehBSDZUUzTcEMToTBOyXYqnlxJudswQ/4r0YDIkCTDbZRkecyiAzPEqBWnVCziBlsZghluZFcKtA43kqygPHlTGG4UBgUVQ5JuJo+iUTTUEQBQSwECFwsUAAIACABANJ5Ju5ZKJpUAAAACDQAACgAJAAAAAAAAACAAgIEAAAAAz8LSu8ziLmJtcFVUBQAH2P9lWFBLBQYAAAAAAQABAEEAAADOAAAAAAA=


[UIPackage]
UEsDBBQAAgAIADqPK0q15MsFCwMAAAggAAAJABEAVUlQYWNrYWdlVVQNAAcJcnZYCXJ2WAlydljtWU1vUkEUPQOUAgX6IRStbcXqD5B9Y2MbG5tQNQVduBJbNKSUNkAjLv0HJrp0408wMW7dGjcaVy41cWM0MbpwYyzeecyDsWktd94LLyiHXF4Lb96ZuXPnzrmDHy28eT3+/snTqQ/Yh/PwY68ZRlD7TCizMAb41P97zWbT/rg5QF/hF1lAzeEwXYfI5JyHyCJkYbIo2QhZjCyu7t0buO6fwBq26VVHGhdRoWsV98DBJEWM/SxxxL03f36d/bb5VvihAotwDSs4B3OEIITN7zuC177q3y0hj6yDHkQU/6haO1z+PPl7B0VcRgFbdOVigrKwPp/dtguoq72WTW3c6gNwjCxBlrRiAkiRHSc7QTbF4Bmgt1jerm49Ds6LZ3M+QXt6sCGSuPRgIdVtHMn2GQfrV8AZnLb3Gl8+vXPlOfcpqT43cIZp3unkP37+EVqulLtOAbdQNuxDHD4htcmw0p7dtPFp+e86SqiRmfZgjPij6Ojebtr4Nf41Yi1gA1fID2Xm3qvyvwiipdW65Q9o/Hnib9C+72D+BXf+9XphidRHmaxq2JOEQfwNaePv8C/SPKxjk89v6Zkww//BffO/7tD/UpeHGPzDVty2cIMir0rxV6R3w/XH9n9IG3+WfM/3+p/jj6vndcsf1viXib/izP/s8cu1Ot+OP6k/Mw74RZt/4pB7/qY/vcaPg31m9XE1l84VKrV0rlgt3T6k/UplZ7e+uN0w5bfbm85Av+sXF+oPK/9PM9bfiMoBEl7ojyja5acr+kPWOQnG+GNwV3/IGmuGwR+Hu/pD1n4pBv8ovNUfcu97pA4LXNAfFv8sY/wn4ar+sMYzyeCf1vhjkVcfX35+8T1j+of5l8y7Bn34X/rQy/2PcWR2IOTJ4VmyBSoCHhps5l7v/27UH/J8L8nIPzPwtv6Yhbv1h8zn44zxn4K39UcanfrDqf72Gv1+/uc1LpD6KOEOxaBU4ZWenL+c1uL/KqmeGr3uWhpog91/k98/5jT+VeySB+rkgyxZha3BTcZ/RuN3Aya//9j4DVBLAQIXCxQAAgAIADqPK0q15MsFCwMAAAggAAAJAAkAAAAAAAAAAAAAgAAAAABVSVBhY2thZ2VVVAUABwlydlhQSwUGAAAAAAEAAQBAAAAAQwMAAAAA


[Script]

Do
    返回值 = Lib.网络.获得网页源文件("http://www.gdcia.cn/wn/index.asp")
    TracePrint time
    Delay 1000
    If InStr(返回值, "成绩") Then 
        Hwnd = Plugin.Window.Find(0, "考试-GDTEC（各分公司）")
        Call Plugin.Window.Active(Hwnd)
        Delay 1000
        For 3
            SayString "【喜大普奔】出成绩了！[PS.我是机器人]"
            KeyPress "Enter", 1
        Next 
        MessageBox "出成绩了"
        EndScript 
    End If
    Delay 15000
Loop 