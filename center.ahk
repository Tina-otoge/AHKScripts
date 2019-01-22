#^f::CenterAndMaximizeActiveWindow()

CenterAndMaximizeActiveWindow()
{
	SysGet, WA_, MonitorWorkArea ; get the actual work area. That is, screen size w/o the taskbar.
	screenWidth := WA_Right - WA_Left
	screenHeight := WA_Bottom - WA_Top
	windowWidth := screenWidth - 42
	windowHeight := screenHeight - 42

	WinGetTitle, windowName, A
	WinMove, %windowName%, , 21, 21, windowWidth, windowHeight
}

#+f::CenterActiveWindow()

CenterActiveWindow()
{
	WinGetPos, X, Y, windowWidth, windowHeight, A
	SysGet, WA_, MonitorWorkArea
	screenWidth := WA_Right - WA_Left
	screenHeight := WA_Bottom - WA_Top
	newX := (screenWidth - windowWidth) / 2
	newY := (screenHeight - windowHeight) / 2

	WinGetTitle, windowName, A
	WinMove, %windowName%, , newX, newY
}
