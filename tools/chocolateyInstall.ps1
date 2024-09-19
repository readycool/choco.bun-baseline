$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.28/bun-windows-x64-baseline.zip'
  checksum64     = 'a02348c80c6d49b3cb0f09cb2e77787fdde328c50eb529f17e7af04d97cf48da608dd0a551fe3c7af7a7fd9e611346c96e51412a66de3d8b21656bb58c73eacb'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
