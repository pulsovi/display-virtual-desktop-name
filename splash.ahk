#include <Graphics>
#include <StdOutToVar>
#Persistent
#SingleInstance, force

/*
Ce fichier est un essai raté : powershell est beaucoup trop long pour récupérer le nom du bureau
 */

General := 0

~^#Right::
~^#Left::
	General.Hide()
	desktopName := StdOutToVar("PowerShell Get-CurrentDesktop | Get-DesktopName")
	General.Hide()
	renderer := Print(desktopName)
	General.Hide()
	General := renderer
	General.Render()
	Sleep, 1500
	renderer.Hide()
	renderer.FreeMemory()
	Return

Print(text) {
	g := new Graphics.TextRenderer
	len := StrLen(text)
	style := "a:centercenter y:50vh x:50vw h:160 r:15%"
	style := style . " w:" (len * 55 + 80) . "px"
	g.Draw(, style)
	g.Draw(text, "c:Off", "s:120pt f:(Avenir LT Pro 55 Roman) c:b0b0b0 a:centercenter x:50vw y:50vh")
	return g
}

