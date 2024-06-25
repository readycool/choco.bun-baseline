$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.17/bun-windows-x64-baseline.zip'
  checksum64     = '98701522b3d07664340e7eae1289ba4a0a84fc5a356d427dd4c3a720f70a2c35e4d72389c1e16966858573cee5a4ba2f7670edea26572c784a93166c6d5b1ecb'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
