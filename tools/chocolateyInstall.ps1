$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.15/bun-windows-x64-baseline.zip'
  checksum64     = '3c2fb143a45fd93fdc265a7de24dc852ccb7530f0f9f0b72b56b06b145edb83b25e32e2bc5d150be1b1942e4a24a85bdd051d5edf6b17f796ce5fbec9dc313cf'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
