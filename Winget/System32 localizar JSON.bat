@echo off

REM Define o caminho e nome do arquivo que você deseja localizar
set FILE_NAME=MeusApps.json
REM Define o diretório de início da busca
set START_DIR=C:\Windows\System32
for /r "%START_DIR%" %%f in (%FILE_NAME%) do (
REM Se o arquivo for encontrado, abre o Explorer na pasta do arquivo e seleciona o arquivo 
if exist "%%f" ( 
	explorer /select,"%%f" 
	echo.
	echo  %FILE_NAME% encontrado em %START_DIR%
	)	
)

exite