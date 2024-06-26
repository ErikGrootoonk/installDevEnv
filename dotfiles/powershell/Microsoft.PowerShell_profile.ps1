$PSStyle.FileInfo.Directory = "`e[34m"
function weeknr() { Get-Date -UFormat %V }

function stepserver() { az ssh vm --ip maz000-vm-p0002.prhs.azure }

# no angry errors
$host.privatedata.ErrorForegroundColor = 'White'

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# set git aliases

function ga() { git add -A }

function gcom {
  param (
      [string]$message
  )

  # Voer de git commit -m uit met het opgegeven bericht
  git commit -m $message
}
function gs() { git status }

function gb() { git branch }

function push() { git push }

# start oh my posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/gruvbox.omp.json" | Invoke-Expression

function od(){ Set-Location 'C:\Users\erik.grootoonk\OneDrive - Pinkroccade\'}

# kubernetes alias

set-alias -Name k -Value kubectl

function kgc() { kubectl config get-contexts }

function kuc() { kubectl config use-context }