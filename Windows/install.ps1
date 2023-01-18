function InstallChoco() {
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

InstallChoco;

/* TODO: enable windows store for windows sandbox */

choco install $PSScriptRoot\chocolatey\packages.config -y;
