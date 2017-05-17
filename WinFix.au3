#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <IE.au3>
Global $url = "http://catalog.update.microsoft.com/v7/site/search.aspx?q="
ConsoleWrite("You are running " & @OSType & " " & @CPUArch&" " & @OSBuild& @CRLF)
GLobal $fixid = ""

switch @OSVersion & @OSArch:

case "WIN_7"&"X86": ;https://support.microsoft.com/kb/3212646
	$fixid = "3212646"
case "WIN_7"&"X64":
	$fixid = "3212646"
case "WIN_81"&"X86": ; 8.1 x86 ;https://support.microsoft.com/kb/3205401
$fixid = "3205401"
case "WIN_81"&"X64": ; 8.1 x64 ;https://support.microsoft.com/kb/3205401
$fixid = "3205401"

; WINDOWS 10
case "WIN_10"&"X86": ;10 x86 ;https://support.microsoft.com/en-us/kb/3210720
   if @OSBuild = 1511 Then
	  $fixid = "3210721"
   ElseIf @OSBuild = 1607 Then
	  $fixid = "3213986"
   Else
	  $fixid = "3210720"
   EndIf


case "WIN_10"&"X64": ;10 x64 ;https://support.microsoft.com/en-us/kb/3210720
   if @OSBuild = 1511 Then
	  $fixid = "3210721"
   ElseIf @OSBuild = 1607 then
	  $fixid = "3213986"
   Else
	  $fixid = "3210720"
   EndIf

EndSwitch

_IECreate($url & $fixid)

