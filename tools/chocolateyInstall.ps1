$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.27/bun-windows-x64-baseline.zip'
  checksum64     = '5fe5bcbe7d67f41d8b70e5ab7012331695d41a6b0d3b188d9f33b5433e7b9efc0321f5079f6fed11b1e69dd56ffa5b303eba06523d18004714f6d0a8371a74ce'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
