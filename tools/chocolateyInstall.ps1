$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.40/bun-windows-x64-baseline.zip'
  checksum64     = '0e62f13877b0d6dd994447b43b4724ad69a9ade7827cc8ed456b9df50570de7ff07ef6f0188e6d1918ebd36bd7750089b58fe013bf0e64d0109e2d5e8a865fce'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
