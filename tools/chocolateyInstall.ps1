$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.30/bun-windows-x64-baseline.zip'
  checksum64     = 'b4f0e5b3c02ab9af96b4f2051571f9e7cbf7baa56162132c4b99bb073e65eb0474f310b5cd585083ab4541e8e11bcb416a6659c098a604aba89468aa83391a0e'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
