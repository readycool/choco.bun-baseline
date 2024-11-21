$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.36/bun-windows-x64-baseline.zip'
  checksum64     = '2e62fc20ccf2e18ec9efa4288e63550afc22af83c6c79425e2da0bdd2e816e79513b071cb84b26b1906c5fc670bb6ed2d1f6def1416a37484fb6cf682b747085'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
