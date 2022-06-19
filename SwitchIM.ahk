CapsLock::
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  if(InputLocaleID = 0x4110411)
	{
	SetCapsLockState, AlwaysOff
	Send +{CapsLock}
	SetCapsLockState, AlwaysOff
	}
  if(InputLocaleID = 0x4090409)
	{
	if GetKeyState("CapsLock", "T") = 1
	SetCapsLockState, Off
	else
	SetCapsLockState, On
	}
Return

RAlt::
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  if(InputLocaleID = 0x4110411)
	{
	SetCapsLockState, AlwaysOff
	Send +{CapsLock}
	}
Return

RCtrl::
Send #{Space}
return

SC11D:: 
Send #{Space}
return

 ; Korean Keyboard Hex 0x4120412
 ; SC11D Scan Code from Autohotkey for Korean RCtrl
 ; SC138 Scan Code from Autohotkey for Korean RAlt