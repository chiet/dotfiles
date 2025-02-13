#Aliases
Set-Alias tt tree
Set-Alias ls ll
Set-Alias g git
Set-Alias v nvim
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias neofetch fastfetch
Set-Alias eth get-netadapter
Set-Alias st saps
Set-Alias cl cls
Set-Alias choc choco
Set-Alias ff fastfetch

#Themes
oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\peru_jebat.omp.json' | Invoke-Expression
#oh-my-posh init pwsh | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\night-owl.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cinnamon.omp.json' | Invoke-Expression

#Terminal-Icons
Import-Module -Name Terminal-Icons

#Functions
#function lab { cd "c:\code" }
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
function q { exit }
function ll { Get-ChildItem | Format-Wide -Column 2 }
function Arch { wsl -d Arch }


#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView


