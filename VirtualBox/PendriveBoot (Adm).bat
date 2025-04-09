@echo off
color A

REM Verifica se o VirtualBox está instalado ===
echo.
choice /M ">> VirtualBox esta instalado nesta maquina? "
if errorlevel 2 (
    echo.
    echo [!] Instale o VirtualBox e execute novamente.
    pause
    exit /b
) else (
    REM Lista todos os discos com DISKPART ===
    echo.
    echo Listando discos locais e removiveis disponiveis...
    echo.
    (
        echo list disk
    ) | diskpart
)
echo.

pause /b

REM Solicita o número do disco (pendrive) ===
choice /M ">> Criar disco virtual VMDK?"
if errorlevel 2 (
    echo.
    echo [!] Operação cancelada pelo usuário.
    pause
    exit
) else (
    set /p DISKNUM=">> Digite o numero do disco do pendrive:" 
    REM Cria o arquivo VMDK apontando para o pendrive
    echo Criando VMDK apontando para PhysicalDrive%DISKNUM%...
    REM "cd" navega entre pastas ou diretórios o VboxManage é o comando para gerenciar o VirtualBox
    cd %programfiles%\Oracle\VirtualBox
    VBoxManage internalcommands createrawvmdk -filename usb.vmdk -rawdisk \\.\PhysicalDrive%DISKNUM%
)

pause
exit
