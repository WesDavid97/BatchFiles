@echo off
Color A

echo.
echo - O Virtual box precisa estar instalado antes de continuar.
echo - O script cria um disco virtual (VMDK) para boot via usb para drivers removiveis bootavel.
echo - Cada VMDK criado se torna unico, vinculado para cada drive.
echo - Certificar se o drive removivel usb, pendrive, HD ou SSD esta conectado.
echo - Erros podem estar relacinados a VMDK nao criada para novos drivers.
echo.
echo Abrindo o gerenciador de disco DISKPART...
(
    echo list disk
) | DISKPART 
echo.
echo.
set /p DISKNUM=">> Digite o numero do disco do pendrive:" 
set /p FOLDERDISK=">> Salvar onde,caminho:"
set VMPATCH=%FOLDERDISK%\VMBoxusb
mkdir %VMPATCH%
  
echo Criando VMDK apontando para PhysicalDrive%DISKNUM%...

REM Script para gerenciar o VirtualBox
cd %programfiles%\Oracle\VirtualBox
VBoxManage internalcommands createrawvmdk -filename %VMPATCH%\usb.vmdk -rawdisk \\.\PhysicalDrive%DISKNUM%

explorer /select , "%VMPATCH%"
pause
exit
