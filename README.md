# BatchFiles
[Scripts batch úteis no terminal windows CMD](https://github.com/WesDavid97/BatchFiles-Windows/tree/main/Sistema)

# Oracle VitualBox

**Criar arquivo MVK script:**

[Script bach para testar pendrives e outros drivers para boot pela máquina virtual](https://github.com/WesDavid97/BatchFiles-Windows/blob/main/VirtualBox%2FPendriveBoot%20%28Adm%29.bat)

**Criar arquivo MVK Manual:**

Utilizando o terminal para criar um disco virtual para acesso ao dispositivo conectado via usb pelo VirtualBox
- Prompt de Comando como administrador.
- No terminal, abrir a pasta de instalação do VirtualBox com o comando: `cd %programfiles%\Oracle\VirtualBox` ""
- Comando completo:
```
cd %programfiles%\Oracle\VirtualBox
VBoxManage internalcommands createrawvmdk -filename C:\usb.vmdk -rawdisk \\.\PhysicalDrive#
```
- `C:\usb.vmdk` =substutuir `C:` pelo caminho da pasta onde sera criado o `\usb.vmdk`
- Substitua `#` pelo número do disco.

 **Exemplo:** VBoxManage internalcommands createrawvmdk -filename D:\MeusArquivos\usb.vmdk -rawdisk \\.\PhysicalDrive3
