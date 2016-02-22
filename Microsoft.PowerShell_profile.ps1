#Set-ExecutionPolicy bypass

$psdir=$env:USERPROFILE

Get-ChildItem "${psdir}\Documents\WindowsPowerShell\Scripts\*.ps1" | %{.$_}

Import-Module PSColor

Remove-Item Alias:cd
Set-Alias cd CdDash

Set-Alias sub "C:\Program Files\Sublime Text 3\sublime_text.exe"

Set-Alias android AndroidDebug

cd c:\


# Load posh-npm example profile
. 'C:\Users\Jannik Nilsson\Documents\WindowsPowerShell\Modules\posh-npm\profile.example.ps1'

