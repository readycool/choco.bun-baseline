$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.14/bun-windows-x64-baseline.zip'
  checksum64     = '518bf0315b38f87d23dd76670777dcdd2d7d3a6bf5078d8237855047e429f710772596fba33c77b7704f753236f9bd063cb275f4a31e5054de9346370ac5d975'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
