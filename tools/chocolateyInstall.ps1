$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.45/bun-windows-x64-baseline.zip'
  checksum64     = '961909384a2820c8bef6730b982361f85c2a30cd985bd74500140b6ecef13edf4588767286563b7da5905422c8126fe39daee63c44d12c39bc0a604e9412f2fd'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
