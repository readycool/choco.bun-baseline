$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.16/bun-windows-x64-baseline.zip'
  checksum64     = '086638b74926584109588ba0d5a6fe7b20b2393fbb618ca8c22e47a15e9c7c05ec28f74d166ac97df7d4fe2f5fc9f1e10aec954c9dc688565ed106a0f0225cbb'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
