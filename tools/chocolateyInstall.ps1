$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.37/bun-windows-x64-baseline.zip'
  checksum64     = 'a51199f3fc353b3a5986dbe3338314c588de49d353d7261e63c61b5d928d8af1250313e77e520a3173fb91f0a356bc547b5cbd8db527efda7f55fbf2eede4128'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
