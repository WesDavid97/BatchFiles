@echo off
color A

echo Informacoes do PC
echo Executando...

REM Powershell Capturar data e hora formatada
	for /f %%a in ('	powershell -Command "Get-Date -Format dd-MM-yyyy"') do set LogData=%%a

REM Powershell C	apturar informações do computador (Fabricante, Modelo, Nome)
	for /f %%b in ('	powershell -Command "(Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -ExpandProperty Manufacturer)"') do set Manufacturer=%%b
	set Manufacturer=%Manufacturer: =%
	for /f %%c in ('	powershell -Command "(Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -ExpandProperty Model)"') do set Model=%%c
	set Model=%Model: =%
	for /f %%d in ('	powershell -Command "(Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -ExpandProperty Name)"') do set PCName=%%d

REM Cria o nome do arquivo de log com base nas informações capturadas 
	set LogFile=%Manufacturer%_%Model%_%LogData%.txt

echo ==========================>>%LogFile%
echo          SISTEMA >>%LogFile%
echo ==========================>>%LogFile%
	systeminfo >>%LogFile%
	echo. >>%LogFile%

echo ==========================>>%LogFile%
echo          HARDWARE >>%LogFile%
echo ==========================>>%LogFile%
	echo.>>%LogFile%
	
    echo == Placa Mae: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_BaseBoard | Select Manufacturer, Product, Version, SerialNumber">>%LogFile%
	echo. >>%LogFile%

	echo == BIOS: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_BIOS | Select SMBIOSBIOSVersion, SerialNumber">>%LogFile%
	echo. >>%LogFile%
	
	echo == CPU: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_Processor | Select Name">>%LogFile%
	echo. >>%LogFile%

	echo == GPU: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_VideoController | Select Name, Caption, DeviceID, DriverDate, DriverVersion, Status">>%LogFile%
	echo. >>%LogFile%

	echo == RAM: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_PhysicalMemory | Select Capacity, Speed">>%LogFile%
	echo. >>%LogFile%

	echo == Armazenamento: >>%LogFile%
		powershell -Command "Get-CimInstance Win32_DiskDrive | Select Model">>%LogFile%
	echo. >>%LogFile%

echo Exportado com sucesso, arquivo: %LogFile%
echo.

pause
exite
