$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.41/bun-windows-x64-baseline.zip'
  checksum64     = 'db89469166d3f7ac7b5069be958436ddff3c663eab62caf6c47e533d1332b99f5ce7de477029248612f27781d0ed54e8f9ab61c01d15685acd8ce354bf49df9c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
