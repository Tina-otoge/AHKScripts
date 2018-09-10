~$LShift::

KeyWait, %key%

if (A_PriorHotKey == A_ThisHotKey && A_TimeSincePriorHotkey < 400)
	SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

Return
