$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.3/bun-windows-x64-baseline.zip'
  checksum64     = 'ece9bbda006bbe0a8762f3676929114196c25531a36ec80ae9e9744db868fd3c2f6677b9e147dbe8ba4d351538ce80b2d79fd972d5a04361dd6d7671bb444ad8'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
