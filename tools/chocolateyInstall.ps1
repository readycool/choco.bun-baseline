$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.38/bun-windows-x64-baseline.zip'
  checksum64     = '0e7693f6f5cc249a458a59f801b57bab3328060ae0d20e85734abd992f6e17101fdd77c5b177902b1a676d3ca71ea7151a58e15e52e63223067b3377c1cb7447'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
