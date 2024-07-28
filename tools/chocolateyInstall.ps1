$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.21/bun-windows-x64-baseline.zip'
  checksum64     = '1eadf6954bddbfa665b3a2fe57b108aaf52a0cf9261fbece494b16b5bbe5ed16327cbce5e80f1348be028f3254aa4e6179c620b9809a24ee3ff98e27830dec03'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
