@ echo off 
color A 

echo.
echo *Executar como Administrador*
echo.
echo Link Simbolico:
echo O comando mklink no Windows e usado para criar links simbolicos, 
echo links fisicos ou juncoes entre arquivos e pastas. Esses links permitem 
echo que voce acesse um arquivo ou pasta em outro local como se fosse o original.
echo.
echo *O link sera criado no mesmo diretorio do arquivo MklinkLocal*

REM Pergunta ao usuário pelo caminho do diretório
set /p dirlink=">> Caminho do arquivo a ser criado o link: "
echo.
Rem Comando rmdir excluio link se ele já existir
rmdir /s /q "%dirlink%"
REm Comando %~dp0 força o link será criado no mesmo diretorio do MklinkLocal 
mklink /D "%~dp0" "dirlink" 

pause 
exit
