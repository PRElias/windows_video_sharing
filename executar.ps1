[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/winnfsd/winnfsd/releases/download/2.4.0/WinNFSd.exe"
$output = "$PSScriptRoot\WinNFSd.exe"
# $wc = New-Object System.Net.WebClient
# $wc.DownloadFile($url, $output)
#OR
# (New-Object System.Net.WebClient).DownloadFile($url, $output)

Invoke-WebRequest -Uri $url -OutFile $output

# New-Item -ItemType Directory -Force -Path $PSScriptRoot

# Get-Content download.json | ConvertFrom-Json | Select-Object -expand downloads | ForEach-Object {

#     $url = $_.url
#     $file = $_.file
#     $output = $downloadFolder + $file

#     if(![System.IO.File]::Exists($output)){

#         Write-Host $file "Arquivo não encontrado...baixando."
#         Start-BitsTransfer -Source $url -Destination $output

#     } else {

#         Write-Host $file "Arquivo já existe...pulando download."

#     }
# }

$videoLibraryPath = $env:userprofile + "\Videos\"

$PSScriptRoot + "\WinNFSd.exe " + $videoLibraryPath + " /videos"