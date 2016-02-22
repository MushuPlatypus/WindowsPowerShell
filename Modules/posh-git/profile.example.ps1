Push-Location (Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

# Load posh-git module from current directory
Import-Module .\posh-git

# If module is installed in a default location ($env:PSModulePath),
# use this instead (see about_Modules for more information):
# Import-Module posh-git


# Set up a simple prompt, adding the git prompt parts inside git repos

set-variable -name HOME -value (resolve-path $env:Home) -force
(get-psprovider FileSystem).Home = $HOME

function shorten-path([string] $path) { 
   $loc = $path.Replace($HOME, '~') 
   # remove prefix for UNC paths 
   $loc = $loc -replace '^[^:]+::', '' 
   # make path shorter like tabs in Vim, 
   # handle paths starting with \\ and . correctly 
   return ($loc -replace '\\(\.?)([^\\])[^\\]*(?=\\)','\$1$2') 
}

function prompt { 
   # our theme 
   $cdelim = [ConsoleColor]::DarkCyan 
   $chost = [ConsoleColor]::Green 
   $cloc = [ConsoleColor]::Cyan 
   $realLASTEXITCODE = $LASTEXITCODE

   write-host "$([char]0x0A7) " -n -f $cloc 
   write-host ([net.dns]::GetHostName()) -n -f $chost 
   write-host ' {' -n -f $cdelim 
   write-host (shorten-path (pwd).Path) -n -f $cloc 
   write-host '}' -n -f $cdelim 
   Write-VcsStatus
   $global:LASTEXITCODE = $realLASTEXITCODE
   return '> ' 
}

#Pop-Location

Start-SshAgent -Quiet
