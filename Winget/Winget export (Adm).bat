@echo off

color A

echo Executando...
echo Exportando aplicativos...
echo.

REM Obtém o diretório onde o script está localizado
set SCRIPT_DIR=%~dp0
REM Define o caminho para o arquivo JSON
set JSON_FILE=%SCRIP_DIR%MeusApps.json
REM Executa o comando winget export
winget export -o "%JSON_FILE%"
REM Abre o Explorador de Arquivos e seleciona o arquivo JSON
explorer /select , "%JSON_FILE%"
echo.

echo %JSON_FILE% criado.
echo.
	
pause
exit