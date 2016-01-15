#Set-ExecutionPolicy bypass

$psdir=$env:USERPROFILE

Get-ChildItem "${psdir}\Documents\WindowsPowerShell\Scripts\*.ps1" | %{.$_}

Import-Module PSColor

Remove-Item Alias:cd
Set-Alias cd CdDash

Set-Alias sub "C:\Program Files\Sublime Text 3\sublime_text.exe"

Set-Alias android AndroidDebug

cd c:\

