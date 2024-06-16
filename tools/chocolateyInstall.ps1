$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.13/bun-windows-x64-baseline.zip'
  checksum64     = '89f6f5db0a464fa911bdc92abc85f7a674f431005b512201bcc0fdd1749d3fcfd6a5a915ebce96c0d88a7a671b91850051faed4d73bbac8199b5491faf768865'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
