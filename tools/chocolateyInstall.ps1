$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.31/bun-windows-x64-baseline.zip'
  checksum64     = 'ca1f9f732e2e2ca083d89013540de26324231601b71ee1cd2629fffe5c0b15c4ade097c76cfc461e8b807829ff1e0c136e8451340003c78c7ed359fcf4e8e746'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
