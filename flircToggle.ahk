

if (FileExist("config_state_def.txt")) {
	oldPostfix = def
	postfix = mouse
	SetScrollLockState, On
} else {
	oldPostfix = mouse
	postfix = def
	SetScrollLockState, Off
}

FileMove, config_state_%oldPostfix%.txt, config_state_%postfix%.txt
RunWait, flirc_util.exe loadconfig config_%postfix%.fcfg,,Hide