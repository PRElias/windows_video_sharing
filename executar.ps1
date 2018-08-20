$ip = get-WmiObject Win32_NetworkAdapterConfiguration|Where {$_.Ipaddress.length -gt 1} 

Write-Host #############################
Write-Host #############################
Write-Host "IP: " $ip.ipaddress[0] 
Write-Host #############################
Write-Host #############################

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/winnfsd/winnfsd/releases/download/2.4.0/WinNFSd.exe"
$output = "$PSScriptRoot\WinNFSd.exe"

if(![System.IO.File]::Exists($output)){

    Write-Host $file "Arquivo não encontrado...baixando."
    Invoke-WebRequest -Uri $url -OutFile $output

} else {

    Write-Host $file "Arquivo encontrado...pulando download."

}

# Recupera a pasta atual como local de vídeos
$videoLibraryPath = Split-Path -Path (Get-Location).Path -Parent

########################################

& "$PSScriptRoot\WinNFSd.exe" $videoLibraryPath " /videos"