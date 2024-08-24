$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.26/bun-windows-x64-baseline.zip'
  checksum64     = '497ffd1e4ef46fe8a7dcbe0544674a35635465d589241a27805b951dea37595ecfd2b7b098df2dac4877bb6efdfe0f6944f250d089bf4446fa0aaf55bb306704'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
