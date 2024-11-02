$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.33/bun-windows-x64-baseline.zip'
  checksum64     = '22c2dd3ee7d6fb122931daff4cf05da4b81c5176f03dad11a163d2f97284e8a722d49778021fdd668be7240419cfbcfde70822759533758f5376903616aaadeb'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
