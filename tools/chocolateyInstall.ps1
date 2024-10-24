$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.32/bun-windows-x64-baseline.zip'
  checksum64     = 'da6537b6dd90b555544f9ed52b56d4a15a1d9d1aa2356666c45c51e4dd1b242f7ee23af281cf5bb52dc627baf79b4d174eb305ebb4ca20c27f69e349335ec12a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
