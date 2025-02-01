@ echo off

color A 

choice /M ">> Instalar a versao mais recente do Git para Windows"
	if errorlevel 2 (
	echo Encerrando...
	pause
	exit
) else (
	echo Baixando...
	echo.
	winget install --id Git.Git -e --source winget
)
pause
exit