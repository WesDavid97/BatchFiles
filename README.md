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
* No terminal, abrir a pasta de instalação do VirtualBox com o comando:
```
cd %programfiles%\Oracle\VirtualBox
```
* O arquivo VMDK será criado no local especificado no comando que vem em seguida:
```
VBoxManage internalcommands createrawvmdk -filename C:\usb.vmdk -rawdisk \\.\PhysicalDrive#
```
* Substituía `C:` pelo caminho da pasta onde sera criado o `\usb.vmdk`
* Substituía `#` pelo número do disco.

 **Exemplo:** VBoxManage internalcommands createrawvmdk -filename D:\MeusArquivos\usb.vmdk -rawdisk \\.\PhysicalDrive3
