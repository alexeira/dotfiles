# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gp gpp -force

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
function getPushMain { git push -u origin main }
function getPull { git pull $args }
function getBranch { git branch $args }
function getSwitch { git switch $args }

# Functions CLI
function eslintReactTs { pnpm add -D prettier eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser @typescript-eslint/eslint-plugin }

# Misc
function backDir { cd .. }
function dirProjects { cd projects/ ; ll }
function toNeovimFolder { cd appdata/local/nvim ; ll }
function toPowerShellFolder { cd .config/powershell/ ; ll }
function toHelixFolder { cd appdata/roaming/helix ; ll }

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Alias Name Value
Set-Alias -Name .. -Value backDir
Set-Alias -Name cdp -Value dirProjects
Set-Alias -Name cdvim -Value toNeovimFolder
Set-Alias -Name cdpwsh -Value toPowerShellFolder
Set-Alias -Name cdhx -Value toHelixFolder

# Alias Git
Set-Alias g git
Set-Alias -Name gpom -Value getPushMain
Set-Alias -Name gs -Value getStatus
Set-Alias -Name ga -Value getAdd
Set-Alias -Name gc -Value getCommit
Set-Alias -Name gp -Value getPull
Set-Alias -Name gb -Value getBranch
Set-Alias -Name gsw -Value getSwitch

# Eslint & Prettier
Set-Alias -Name eslint-react-ts -Value eslintReactTs