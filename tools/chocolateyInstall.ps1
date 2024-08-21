$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.25/bun-windows-x64-baseline.zip'
  checksum64     = '6ae45573363f40bc38e4575063cd489d35318265d32cfa25f7b26fde55f4ef24be002dd641b56468fea4952c8234f7331ede091423c8a089e52f310c6a008885'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
