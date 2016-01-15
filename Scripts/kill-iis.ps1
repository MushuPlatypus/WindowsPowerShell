#Kill IIS
rename-item alias:\kill pskill -force
function kill-iis {
    KillProcessByName w3wp.exe
    KillProcessByName WebDev.WebServer40.EXE
    KillProcessByName WebDev.WebServer20.EXE
}
Set-Alias -Name kill -Value kill-iis