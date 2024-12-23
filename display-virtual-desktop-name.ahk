#Persistent
#SingleInstance, force

General := 0
Subscript := A_ScriptDir . "\display-virtual-desktop-name1.ahk"

^#n:: Run, %A_AhkPath% "%Subscript%" 1500 %Counter%

~^#Right::
~^#Left::
	Run, %A_AhkPath% "%Subscript%" 800 %Counter%
	Return
