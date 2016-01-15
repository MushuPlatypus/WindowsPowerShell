function KillProcessByName($a) { 
	$program = "C:\Windows\System32\taskkill.exe"
	$programArgs = "/F", "/IM", "$a", "/T"
	&$program $programArgs
}