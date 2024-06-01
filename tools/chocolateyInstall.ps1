$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.12/bun-windows-x64-baseline.zip'
  checksum64     = '62d0d1a4ebc728454f2aff5f3b82731b8b451744da09547bfbd81fc826363a3d66833a84b515ca9ddae80d259d7f57ac51c4df8c35cea6eeedc02604bbb6012a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
