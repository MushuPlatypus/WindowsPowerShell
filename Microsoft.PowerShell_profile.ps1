#Set-ExecutionPolicy bypass
#
# Set the $HOME variable for our use
# and make powershell recognize ~\ as $HOME
# in paths
#


$psdir=$env:USERPROFILE

Get-ChildItem "${psdir}\Documents\WindowsPowerShell\Scripts\*.ps1" | %{.$_}

Import-Module PSColor

Remove-Item Alias:cd
Set-Alias cd CdDash

Set-Alias sub "C:\Program Files\Sublime Text 3\sublime_text.exe"



function atom-run([string] $arg) { & $($env:LOCALAPPDATA+ "\atom\bin\atom.cmd") $arg}
Set-Alias -Name atom -Value atom-run



Set-Alias android AndroidDebug

cd c:\
