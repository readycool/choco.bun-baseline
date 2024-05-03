$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.6/bun-windows-x64-baseline.zip'
  checksum64     = 'c51f723ac4572bc0785c9bd38654ae18ee3d785a4b99e9313f30f85f153cb36306332b3acbd292257e22148879221b628f350d3a6f5b2dd88e37dbdd330e27df'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
