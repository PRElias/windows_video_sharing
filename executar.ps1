Import-Module BitsTransfer
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" #Convince Powershell to talk to sites with different versions of TLS

$downloadFolder = "$PSScriptRoot\download\"
New-Item -ItemType Directory -Force -Path $downloadFolder

Get-Content download.json | ConvertFrom-Json | Select-Object -expand downloads | ForEach-Object {

    $url = $_.url
    $file = $_.file
    $output = $downloadFolder + $file

    if(![System.IO.File]::Exists($output)){

        Write-Host $file "arquivo não encontrado...baixando."
        Start-BitsTransfer -Source $url -Destination $output

    } else {

        Write-Host $file "Arquivo já existe...pulando download."

    }
}
