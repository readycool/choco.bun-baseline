$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.11/bun-windows-x64-baseline.zip'
  checksum64     = 'a2cbd51bb8cfb494bb10225d0f9ce7afb7a770c1a40cc04e2cf57a107c17be86b2fddf5e80299c2e76b0d2319c686dc0e916e3b7e9f1692df6f3e0ae5f362f29'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
