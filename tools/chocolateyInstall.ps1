$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.8/bun-windows-x64-baseline.zip'
  checksum64     = '97a7db13e7f45d51051f14e115adefdde77b6e49c7c4a057d11fe9563474e65f7d1496169f47509801f7e443d4c9fc2bb3142ef5fa72039c7216070ebe5665b8'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
