$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.39/bun-windows-x64-baseline.zip'
  checksum64     = 'bf3f30cc2a140939eae01981e824c99f4b1138c54b493f7138e6637b3489699ec2942adc5659f176d4535e1c22e97d762615c0450a9b660773dec6f9e1a89f86'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
