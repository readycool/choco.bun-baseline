$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.10/bun-windows-x64-baseline.zip'
  checksum64     = '9d65da2c2d2f2bc4a2d4360ae7ae872dd44cd05b8fdf894410ff95fed343ed5707865c5f1eb20c515d07c0ac493353413a411ee57642521237f5374e2a67cb9b'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
