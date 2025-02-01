@echo off

color A 

echo Configuracao do Git
echo.

REM versão do git
echo versao do Git:
git --version
echo.
REM Ira retornar a lista global do nome e e-mail
echo Nome de usuario e e-mail atual:
git config --global --list
echo.

REM unset limpa o nome e e-mail atual
choice /M ">> Apagar e mudar nome de usuario e e-mail atual "
if errorlevel 2 (
	echo Encerrando...
	pause
	exit
) else (
	echo.
	git config --global --unset user.name
	git config --global --unset user.email
	echo Nome e e-mail atual apagados.
	echo.
	set /p GlobalName="> Digite o seu novo nome de usuario:"
	set /p GlobalEmail="> Digite o seu e-mail:"
	git config --global user.name "%GlobalName%"
	git config --global user.email "%GlobalEmail%"
	echo.
)

echo Novo nome de usuario e e-mail configurados.

pause