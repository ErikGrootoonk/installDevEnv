# remove background color from dir and set it to blue
$PSStyle.FileInfo.Directory = "`e[34m"

function weeknr() { Get-Date -UFormat %V }

function stepserver() { az ssh vm --ip maz000-vm-p0002.prhs.azure }
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

function gia() { git add -A }
#function gc() {git commit -m}
function gis() { git status }

function push() { git push }

# kubernetes aliases

function k() { kubectl.exe }
function kgc() { kubectl.exe config get-contexts }
function kuc() { kubectl.exe config use-context }
