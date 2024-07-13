$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.20/bun-windows-x64-baseline.zip'
  checksum64     = '37fa054141c89015a64d9ec0759e4aa3cd398d0eaf9140bdf1286e9866a919214cd22d3963387233c0dfc6b62926352223963cceba4497af6363e42249ce2cf6'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
