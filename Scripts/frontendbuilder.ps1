# Frontend run
function frontend-run { npm run frontend --task=$args }
Set-Alias -Name run -Value frontend-run

# Gulp tab completion
Invoke-Expression ((gulp --completion=powershell) -join [System.Environment]::NewLine)