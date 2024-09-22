$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.29/bun-windows-x64-baseline.zip'
  checksum64     = '53e6c36b992480e87a698cc88a0272bfb3d12055d39116ece97b23d2ee7f0319420d78b0266f94af70c48acf0fbb451ed489399e8819a19c7fcd07ae96e5b547'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
