$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.44/bun-windows-x64-baseline.zip'
  checksum64     = '649e8c41a42828996640d1f47e80a3238b3d6228a3dec5c610616bf533535dd478988cbabfea7f825c4f87e0f9fadf50307cbcbb56ab7282ad0b0c0d7bd04683'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
