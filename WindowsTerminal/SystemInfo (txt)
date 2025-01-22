@echo off

color A

echo.
echo Executando...

	systeminfo >>SistemaInfo.txt
	echo.
	
	echo --------------------------------------------HARDWARE-------------------------------------------->>SistemaInfo.txt
	echo.>>SistemaInfo.txt
	
        echo Placa Mae: >>SistemaInfo.txt
	wmic baseboard get product,Manufacturer,version,serialnumber >>SistemaInfo.txt
	echo. >>SistemaInfo.txt
	wmic bios get SMBIOSBIOSVersion >>SistemaInfo.txt
	echo. >>SistemaInfo.txt
	wmic bios get SerialNumber >>SistemaInfo.txt
	echo. >>SistemaInfo.txt

	echo Processador: >>SistemaInfo.txt
	wmic cpu get name >>SistemaInfo.txt
	echo. >>SistemaInfo.txt

	echo GPU: >>SistemaInfo.txt
	wmic path win32_videocontroller get name, caption, deviceid, driverdate, driverversion, status >>SistemaInfo.txt
        echo. >>SistemaInfo.txt

	echo Memoria RAM: >>SistemaInfo.txt
	wmic memorychip get Capacity, Speed >>SistemaInfo.txt
	echo. >>SistemaInfo.txt

	echo Armazenamento: >>SistemaInfo.txt
	wmic diskdrive get Model >>SistemaInfo.txt
	echo. >>SistemaInfo.txt

	echo Sistema Opercional: >>SistemaInfo.txt
	wmic os get Caption,Version >>SistemaInfo.txt
	echo. >>SistemaInfo.txt
	
	echo Exportado com sucesso, arquivo SistemaInfo.
	echo.

pause
exite
