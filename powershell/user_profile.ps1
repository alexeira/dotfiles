# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gp gpp -force
rename-item alias:\gcm gcmm -force
rename-item alias:\gl glct -force

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

# Work Profile
. $PSScriptRoot\work.ps1

# Icons
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\alexeira.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Functions Git Alias
function getStatus { git status $args }
function getAdd { git add $args }
function getCommit { git commit $args }
function getCommitMessage { git commit -m $args }
function getCommitAllMessage { git commit -am $args }
function getPush { git push $args }
function getPushMain { git push -u origin main }
function getPull { git pull $args }
function getBranch { git branch $args }
function getSwitch { git switch $args }
function getRemote { git remote $args }
function getClone { git clone $args }
function getLog { git log $args }

# Functions CLI
function eslintReactTs { pnpm add -D prettier eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser @typescript-eslint/eslint-plugin }

# Functions nvm
function customNvmUse {
  nvm use $(Get-Content .nvmrc)
}

# Misc
function backDir { cd .. }
function dirProjects { cd projects/ ; ll }
function toNeovimFolder { cd appdata/local/nvim ; ll }
function toPowerShellFolder { cd .config/powershell/ ; ll }
function toHelixFolder { cd appdata/roaming/helix ; ll }
function toRootDirectory {
  $rootDirectory = "C:\Users\alexp.HPDEV"
  Set-Location -Path $rootDirectory
}

# Alias General
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Alias Folders
Set-Alias -Name .. -Value backDir
Set-Alias -Name cdp -Value dirProjects
Set-Alias -Name cdvim -Value toNeovimFolder
Set-Alias -Name cdpwsh -Value toPowerShellFolder
Set-Alias -Name cdhx -Value toHelixFolder
Set-Alias -Name home -Value toRootDirectory

# Alias Rust
Set-Alias -Name rsup -Value rustup
Set-Alias -Name rsc -Value rustc
Set-Alias -Name c -Value cargo

# Alias Git
Set-Alias g git
Set-Alias -Name gpom -Value getPushMain
Set-Alias -Name gs -Value getStatus
Set-Alias -Name ga -Value getAdd
Set-Alias -Name gc -Value getCommit
Set-Alias -Name gcm -Value getCommitMessage
Set-Alias -Name gcam -Value getCommitAllMessage
Set-Alias -Name gp -Value getPull
Set-Alias -Name gpsh -Value getPush
Set-Alias -Name gb -Value getBranch
Set-Alias -Name gsw -Value getSwitch
Set-Alias -Name gr -Value getRemote
Set-Alias -Name gcl -Value getClone
Set-Alias -Name gl -Value getLog

# Eslint & Prettier
Set-Alias -Name eslint-react-ts -Value eslintReactTs

# Alias NVM
Set-Alias -Name nvmu -Value customNvmUse
