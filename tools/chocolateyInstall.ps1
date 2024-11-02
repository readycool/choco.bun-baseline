$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.34/bun-windows-x64-baseline.zip'
  checksum64     = '514260fb322a430770e7151eb465f67065188b19eb76b324ca8bd07d9e104dcf9433f0d343fabfcb3f7e797c871df031bc38f496cba33794be7f1f2e740cd18a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
