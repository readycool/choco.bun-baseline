$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.5/bun-windows-x64-baseline.zip'
  checksum64     = '6935ba3da95a425f48ddc08049aa2b748af51678fc0f82ababfaa9225a1a4e7b1105a91110d54503bc319e6ed286c975a7502100d628a0fb2385f41c331e6ed5'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
