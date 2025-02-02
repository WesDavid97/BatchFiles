@echo off

color A

echo *Executar como Administrador*
echo.
echo Link Simbolico:
echo O comando mklink no Windows e usado para criar links simbolicos, 
echo links fisicos ou juncoes entre arquivos e pastas. Symlink ou Link 
echo Simbolico permite manter a sincronizacao entre dois diretorios.
echo.
echo O comando MkLink solicita primeiro o caminho de destino onde o link/atalho sera criado,
echo em seguida, o caminho de origem onde esta o diretorio que o usuario deseja criar o link.
echo.

REM Pergunta ao usuário pelo caminho do diretório
set /p dirLink=">> Caminho de destino do Link : "
set /p dirOrigem="<< Caminho de origem do diretorio: "
echo.

REM Obtém o nome do diretório a ser clonado 
for %%f in ("%dirOrigem%") do set dirName=%%~nxf

REM Cria o link simbólico na Área de Trabalho
mklink /D "%dirLink%\%SymlinkMkLink%\%dirName%" "%dirOrigem%"
echo.

pause
