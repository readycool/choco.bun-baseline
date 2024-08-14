$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.23/bun-windows-x64-baseline.zip'
  checksum64     = '57d20ff382ab63aed903a9310a7f98e952d5080f0408fa220c90fed34b6079d095fde4d7572061b262ea52b59bdc3de027978b5c81ec79dbbdb64535a7e76a96'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
