[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/winnfsd/winnfsd/releases/download/2.4.0/WinNFSd.exe"
$output = "$PSScriptRoot\WinNFSd.exe"

if(![System.IO.File]::Exists($output)){

    Write-Host $file "Arquivo não encontrado...baixando."
    Invoke-WebRequest -Uri $url -OutFile $output

} else {

    Write-Host $file "Arquivo encontrado...pulando download."

}

#### Configurando a pasta de vídeos ####

# Infelizmente não funcionou usar uma biblioteca do Windows
#$videoLibraryPath = $env:userprofile + 'AppData\Roaming\Microsoft\Windows\Libraries\Videos.library-ms'

# Use esse caminho se você usar o local padrão do Windows para guardar seus vídeos
#$videoLibraryPath = $env:userprofile + "\Videos\"

# Informe um local customizado de vídeos
$videoLibraryPath = "E:\"

########################################

& "$PSScriptRoot\WinNFSd.exe" $videoLibraryPath " /videos"