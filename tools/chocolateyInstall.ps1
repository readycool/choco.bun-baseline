$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.9/bun-windows-x64-baseline.zip'
  checksum64     = 'e81bbc8293b0043e296fba055ceb9f64eee858fb8a25af7c21648723b6e5fef636070858b8db2933df4684c2ca34d6934b155d1ba6f2fa03436655eeb5750fe1'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
