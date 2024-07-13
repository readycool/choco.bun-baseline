$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.19/bun-windows-x64-baseline.zip'
  checksum64     = 'eae7f00fcb08bd15d8b0fab92dfb0393f25bc929083fa8781daf52da5b17add51b99cc253ce0690a3dade554aec60d2f90d778a556e75eab52f4a1ba1639149a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
