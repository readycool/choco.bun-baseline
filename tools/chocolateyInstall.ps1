$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.4/bun-windows-x64-baseline.zip'
  checksum64     = '6900bc289171cdc8528e40b6d3b6e8f406970eb78ada8e6e92ccb47f6af265835fdb94ef705a9e7351417bcb1966a7c4d4c7c90074b579368a6ce33db897f038'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
