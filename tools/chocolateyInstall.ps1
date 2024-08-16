$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.24/bun-windows-x64-baseline.zip'
  checksum64     = 'f13e36abaec940a2a453d53f838986f16335fd4855b99ab35be3acb5e5c2fb6e2c1d5cc431a6510ff8b51f73ad17ac96532675aa578e59b03aa97d85069c8a08'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
