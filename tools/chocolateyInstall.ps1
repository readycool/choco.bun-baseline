$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.7/bun-windows-x64-baseline.zip'
  checksum64     = 'b335ee81d65ef26b323d6117fea37f7a9ecdc48213a2a8dbd1b127ced2bab868b8b9bf5e37fee65151d33eb39109a7e9dc6eb422085483bea1d9059d0ec2cc7a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
