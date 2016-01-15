#Set-ExecutionPolicy bypass

$psdir=$env:USERPROFILE
Get-ChildItem "${psdir}\Documents\WindowsPowerShell\Scripts\*.ps1" | %{.$_}
Import-Module PSColor
# Remove-Item Alias:ls
# Set-Alias ls ChildItemColor

Remove-Item Alias:cd
Set-Alias cd CdDash

Set-Alias sub "C:\Program Files\Sublime Text 3\sublime_text.exe"

# New-PSDrive FT filesystem 'F:\Projects\FT'

Set-Alias android AndroidDebug

function project-c { cd c:\projects }
Set-Alias -Name pc -Value project-c

function project-f { cd f:\projects }
Set-Alias -Name pf -Value project-f


# Load posh-git example profile
. 'C:\Users\Jannik Nilsson\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gcm gkm -force
rename-item alias:\gl gll -force
rename-item alias:\gsn gsnn -force
rename-item alias:\gm gmm -force
rename-item alias:\gp gpp -force

# Git
function git-status { git status }
Set-Alias -Name gs -Value git-status

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-branch { git branch $args }
Set-Alias -Name gb -Value git-branch

function git-diff { git diff $args }
Set-Alias -Name gd -Value git-diff

function git-diff-cached { git diff --cached }
Set-Alias -Name gdc -Value git-diff-cached

function git-diff-master { git diff master }
Set-Alias -Name gdm -Value git-diff-master

function git-diff-dev { git diff dev }
Set-Alias -Name gdd -Value git-diff-dev

function git-commit-all { git commit -a }
Set-Alias -Name gca -Value git-commit-all

function git-commit-m { git commit -m $args }
Set-Alias -Name gcm -Value git-commit-m

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

function git-log { git log }
Set-Alias -Name gl -Value git-log

function git-fetch { git fetch }
Set-Alias -Name gf -Value git-fetch

function git-rebase-continue { git rebase --continue }
Set-Alias -Name grc -Value git-rebase-continue

function git-push { git push }
Set-Alias -Name gp -Value git-push

function git-cred { git config --global credential.helper wincred }
Set-Alias -Name gitcred -Value git-cred

# Frontend run
function frontend-run { npm run frontend --task=$args }
Set-Alias -Name run -Value frontend-run

#Kill IIS
rename-item alias:\kill pskill -force
function kill-iis {
    Taskkill /IM w3wp.exe /F
    Taskkill /IM WebDev.WebServer40.EXE /F
    Taskkill /IM WebDev.WebServer20.EXE /F
}
Set-Alias -Name kill -Value kill-iis

# Gulp tab completion
Invoke-Expression ((gulp --completion=powershell) -join [System.Environment]::NewLine)


cd c:\

