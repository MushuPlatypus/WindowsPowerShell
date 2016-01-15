function AndroidDebug { 
	$program = "adb"
	$programArgs = "forward", "tcp:9222", "localabstract:chrome_devtools_remote"
	& $program $programArgs
}