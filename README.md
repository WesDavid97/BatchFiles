# BatchFiles
[Scripts batch úteis no terminal windows CMD](https://github.com/WesDavid97/BatchFiles-Windows/tree/main/Sistema)

# Oracle VitualBox
**Boot pelo pendrive**  
Boot de sistemas pela iso em drivers conectados pela usb, 
útil para testar pendrive bootavel pelo VMbox.  
  
**Criar usb.vmdk script:**  
[Script de boot pelo pendrive e outros drivers pela máquina virtual](https://github.com/WesDavid97/BatchFiles-Windows/blob/main/VirtualBox%2FPendriveBoot%20%28Adm%29.bat)

**Criar usb.vmdk Manual:**  
Utilizando o terminal para criar um disco virtual para acesso ao dispositivo conectado via usb pelo VirtualBox  
* Prompt de Comando como administrador.
* No terminal, vá diretamente ao diretório onde o VirtualBox está instalado antes de executar o comando:
```
cd "%programfiles%\Oracle\VirtualBox"
```
* O arquivo VMDK será criado no local especificado no comando que vem em seguida:
```
.\VBoxManage.exe createmedium disk --filename C:\VirtualDiskUsb.vmdk --format=VMDK --variant RawDisk --property RawDrive=\\.\PhysicalDrive#
```
* Substituía `C:` pelo diretorio onde está instalado o VirtualBox, sera criado o arquivo `VirtualDiskUsb.vmdk`.
* Substituía `#` pelo número do disco.

