@echo off

color A
echo Esse comando reinicia o computador e o leva diretamente para a configuracao
echo do firmware BIOS/UEFI apos cerca de um minuto.
echo.
choice /M ">> Reiniciar o computador e acessar a BIOS/UEFI?"
if errorlevel 2 (
    echo.
    echo Encerrando...
    pause
    exit
) else (
    echo.
    shutdown /r /fw
) 

pause 
exit 