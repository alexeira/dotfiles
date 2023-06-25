# Remove Defaults
rename-item alias:\gc gk -force

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

# Icons

Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\alexeira.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Functions Git Alias
function getStatus { git status }
function getAdd { git add $args }
function getCommit { git commit -m $args }

# Misc
function backDir { cd .. }
function dirProjects { cd projects/ ; ll }

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Alias Name Value
Set-Alias -Name .. -Value backDir
Set-Alias -Name cdp -Value dirProjects

Set-Alias -Name gs -Value getStatus
Set-Alias -Name ga -Value getAdd
Set-Alias -Name gc -Value getCommit

