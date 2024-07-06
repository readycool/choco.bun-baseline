$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.18/bun-windows-x64-baseline.zip'
  checksum64     = '1c27730560a861fb56016fd14d2eff5551f89fd46b9b03c809608036d3617ccc1deb11a7102d0b3942254fb281abf4ab69bfb8459c814c076206d62be0e9992a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
