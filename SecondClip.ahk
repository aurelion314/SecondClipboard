#NoEnv  ; performance and compatibility
SendMode Input  ; superior speed and reliability
SetWorkingDir %A_ScriptDir% 

#c::
	ClipSaved := ClipboardAll   ; Save the clipboard 
	Clipboard =                 ; Clear the clipboard
	Send, {ctrl down}c{ctrl up} ; Copy the highlighted text to the clipboard 
	ClipWait 1                  ; Wait up to 1 second for the clipboard to contain data 
	if ErrorLevel
	{
	return
	}             ; If there is no data in the clipboard after 1 second, exit 
	CLip2Data := Clipboard   		; Assign the clipboard content to the variable 
	sleep, 100
	Clipboard := ClipSaved      ; Restore the original clipboard 
	ClipSaved =                 ; Free the memory in case the clipboard was very large 
Return

#v::
	Send, %Clip2Data%
Return

^1::
	Send, select * from mytable where id1 = %Clipboard% and id2 = "%Clip2Data%" ;
Return

!s::
	Send, Select * from ;
Return