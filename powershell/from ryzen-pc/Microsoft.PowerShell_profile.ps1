#Aliases
Set-Alias tt tree
Set-Alias ls ll
Set-Alias g git
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias neofetch fastfetch
Set-Alias eth get-netadapter
Set-Alias st saps
Set-Alias cl cls
Set-Alias choc choco
Set-Alias lg lazygit
Set-Alias py python

#Themes
oh-my-posh --init --shell pwsh --config 'C:\Users\Admin\.config\oh-my-posh\themes\night-owl.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cinnamon.omp.json' | Invoke-Expression

#Terminal-Icons
Import-Module -Name Terminal-Icons

#Chocolatey
# Import the Chocolatey Profile that contains the necessary code to enable
#tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

#Functions
#function lab { cd "c:\code" }
function q { exit }
function ll { Get-ChildItem | Format-Wide -Column 2 }
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58
