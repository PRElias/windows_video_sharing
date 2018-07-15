[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/winnfsd/winnfsd/releases/download/2.4.0/WinNFSd.exe"
$output = "$PSScriptRoot\WinNFSd.exe"
Invoke-WebRequest -Uri $url -OutFile $output
$videoLibraryPath = $env:userprofile + "\Videos\"
$PSScriptRoot + "\WinNFSd.exe " + $videoLibraryPath + " /videos"