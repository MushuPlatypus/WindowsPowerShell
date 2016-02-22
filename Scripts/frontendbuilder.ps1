# Frontend run
function frontend-run([string] $task, [string] $env="debug") { npm run frontend --task=$task --env=$env }
Set-Alias -Name run -Value frontend-run

# Gulp tab completion
Invoke-Expression ((gulp --completion=powershell) -join [System.Environment]::NewLine)