[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/winnfsd/winnfsd/releases/download/2.4.0/WinNFSd.exe"
$output = "$PSScriptRoot\WinNFSd.exe"

if(![System.IO.File]::Exists($output)){

    Write-Host $file "Arquivo não encontrado...baixando."
    Invoke-WebRequest -Uri $url -OutFile $output

} else {

    Write-Host $file "Arquivo encontrado...pulando download."

}

$videoLibraryPath = $env:userprofile + "\Videos\"
$PSScriptRoot + "\WinNFSd.exe " + $videoLibraryPath + " /videos"