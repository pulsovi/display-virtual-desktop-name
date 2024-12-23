#include <Graphics>
#include <StdOutToVar>
#SingleInstance, force

Duration=%1%

desktopName := StdOutToVar("C:\dev\virtual-desktop-mscholtes\VirtualDesktop.exe gcdn")
renderer := Print(desktopName)
renderer.Render()
Sleep, % Duration
renderer.Hide()
renderer.Destroy()
renderer.FreeMemory()

Print(text) {
	g := new Graphics.TextRenderer
	len := StrLen(text)
	style := "a:centercenter y:50vh x:50vw h:160 r:15%"
	style := style . " w:" (len * 55 + 80) . "px"
	g.Draw(, style)
	g.Draw(text, "c:Off", "s:120pt f:(Avenir LT Pro 55 Roman) c:b0b0b0 a:centercenter x:50vw y:50vh")
	return g
}
