$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.35/bun-windows-x64-baseline.zip'
  checksum64     = 'eb9e9063ec09c23585274d4a968f1075c493707fce12351f7432af8e86cd07acfd2af52d3d9ea403fb213592d775f8520fa372655429f46eb7c1e3964a307f66'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
