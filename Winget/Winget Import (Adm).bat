@echo off

color A

echo Importando aplicativos arquivo JSON...
echo Procurando atualizacoes...
echo.

REM Obtém o diretório onde o script está localizado
set SCRIPT_DIR=%~dp0
REM Define o caminho para o arquivo JSON
set JSON_FILE=%SCRIP_DIR%MeusApps.json
REM Executa o comando winget Import
winget import -i "%JSON_FILE%" --ignore-versions
echo.

echo Concluido.
echo.
	
	
pause
exit