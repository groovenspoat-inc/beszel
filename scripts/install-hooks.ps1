$ErrorActionPreference = 'Stop'
$repo = git rev-parse --show-toplevel
if (-not $repo) { throw "Not inside a git repo." }
Set-Location $repo
git config core.hooksPath .githooks
Write-Host "core.hooksPath -> .githooks"
Write-Host "Hooks active. Personal denylist expected at: $env:USERPROFILE\.beszel-denylist.txt"
