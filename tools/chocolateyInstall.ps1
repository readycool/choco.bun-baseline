$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.43/bun-windows-x64-baseline.zip'
  checksum64     = '6e4c8ae8cba71c8de059c492fcb661c00a99ce74bf264ecbedc3e07194def861d8eda871a19618e9c820ec6ec48826e294b26ae478de10d3d1fe13388638d704'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
