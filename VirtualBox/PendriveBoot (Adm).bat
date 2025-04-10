@echo off
Color A

REM Lista todos os discos com DISKPART ===
echo.
echo Listando discos locais e removiveis disponiveis...
(
    echo list disk
) | diskpart
echo.
pause /b

REM Solicita o número do disco (pendrive) ===
echo.
choice /M ">> Criar disco virtual VMDK?"
if errorlevel 2 (
    echo.
    echo [] Operação cancelada pelo usuário.
    pause
    exit
) else (
    echo [] O script cria um disco virtual (VMDK) para boot via usb para drivers
    echo    removíveis bootavel.
    echo [] Cada VMDK criado é unico, vinculado para cada drive.
    echo [] Antes de iniciar o Virtual box precisa estar instalado.
    echo [] Certificar se o drive usb, pendrive, HD ou SSD esta conectado.
    echo [] Erros podem estar relacinados a VMDK não criada para novos drivers.
    echo.

    set /p DISKNUM=">> Digite o numero do disco do pendrive:" 
    set /p FOLDERDISK=">>Salvar pasta,caminho:"
    set VMPATCH=%FOLDERDISK%\VMBoxusb\usb.vmdk
    
    echo Criando VMDK apontando para PhysicalDrive%DISKNUM%...
    REM "cd" navega entre pastas ou diretórios o VboxManage é o comando para gerenciar o VirtualBox
    cd %programfiles%\Oracle\VirtualBox
    VBoxManage internalcommands createrawvmdk -filename %VMPATCH% -rawdisk \\.\PhysicalDrive%DISKNUM%
)

pause
exit
