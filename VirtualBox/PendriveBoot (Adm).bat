@echo off
Color A

echo.
echo PendriveBoot VirtualBox
echo -------------------------------------------------------------------------------------------
echo [*] Leia-me [*]
echo [] O Virtual box precisa estar instalado antes de continuar.
echo [] Certificar se o drive removivel usb, pendrive, HD ou SSD esta conectado.
echo [] Este script precisar ser executado como administrador no mesmo repositorio 
echo    do VirtualBox, por padrao o disco C:
echo [] Cada VMDK criado se torna unico, vinculado para cada drive.
echo [] Erros podem estar relacinados a VMDK nao criada para novos drivers.
echo [] O script cria um disco virtual (VMDK) para boot via usb para drivers removiveis bootavel.
echo -------------------------------------------------------------------------------------------
echo.
echo Abrindo o gerenciador de disco DISKPART...
(
    echo list disk
) | DISKPART
echo.
echo.

set /p DISKNUM=">> Digite o numero do disco do removivel:" 
set /p FOLDERDISK=">> Local onde salvar VirtualDisk Usb:"
set VMPATH=%FOLDERDISK%\VirtualDiskUsb.vmdk
echo Criando VMDK apontando para PhysicalDrive%DISKNUM%...

REM Script para gerenciar o VirtualBox

cd "%programfiles%\Oracle\VirtualBox"
.\VBoxManage.exe createmedium disk --filename %VMPATH% --format=VMDK --variant RawDisk --property RawDrive=\\.\PhysicalDrive%DISKNUM%

echo [*] VMDK criado com sucesso!
explorer /select , "%FOLDERDISK%"
pause
exit
