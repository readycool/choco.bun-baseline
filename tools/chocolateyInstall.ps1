$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.22/bun-windows-x64-baseline.zip'
  checksum64     = 'dbf4d7ab687476285741dab97488b3796a2a27bd3ebc65c0502210efce6efcd17263d793619f2866fa43e4fb7d0245fc385a765f14a91bbdaf441f5af54244c2'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
