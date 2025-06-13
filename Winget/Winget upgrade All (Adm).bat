@echo off

color A

REM atualizar todos os pacotes instalados através do Windows Package Manager (winget).
choice /M ">> Procurar e aplicar atualizacoes para todos Apps instalados "
if errorlevel 2 (
	echo.
	echo Encerrando...
	pause
	exit
) else (
	echo.
	echo Executando...
	echo Procurando atualizacoes...
	winget upgrade --all
)
echo.

echo Concluido.
echo.
	
pause 
exit