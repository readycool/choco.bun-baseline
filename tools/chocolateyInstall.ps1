$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.42/bun-windows-x64-baseline.zip'
  checksum64     = 'cca43cd16ff3193bed6f908ffe11c279fa238bcfbd1e9fc35132cdc98adb6589589e0fcd10086760ef23537c644a8baba5fb5c8cfdd11b03542a6e7df96f47aa'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
