# Winget terminal do Windows 

* ADMINSTRADOR: executavel ira gravar e procurar o arquivo JSON na pasta C:\Windows\System32 por padrao.
Os executaveis como Administrador iram ignorar as interrupções de sitema para permissões 
de instalação de cada app.

* USUARIO LOCAL: executavel ira gravar o arquivo JSON na mesma pasta do    executavel.

# Arquivos em lotes:
-----------------------------------------------
System32 colar JSON

Função: Abre a pasta C:\Windows\System32.
Uso:  Mover ou colar o JSON para C:\Windows\System32.
-----------------------------------------------
System32 Localizar JSON

Função: Localiza o arquivo JSON salvo dentro da pasta C:\Windows\System32.
Uso: localizar o JSON quando o comando winget export é executado como Administrador.
-----------------------------------------------
Winget Export

Função: Exporta a lista de aplicativos instalados no seu sistema para um arquivo JSON.
Uso: Ideal para compartilhar a lista de aplicativos ou para reinstalar em outro computador.
Exemplo: winget export -o C:\caminho\para\pasta\meus_apps.json
-----------------------------------------------
Winget Import

Função: Importa a lista de aplicativos de um arquivo JSON e instala-os automaticamente.O comando --igonre-versions ira ignorar a versão especidficada do arquivo json e procurar as versões atualizadas dos Apps.
Uso: Útil para restaurar seu ambiente de trabalho em um novo dispositivo ou após a reinstalação do sistema operacional.
Exemplo: winget import -i C:\caminho\para\pasta\meus_apps.json --ignore-versions
-----------------------------------------------
Winget Upgrade --all

Função: Atualiza todos os aplicativos instalados para as versões mais recentes disponíveis.
Uso: Mantém todos os seus aplicativos atualizados sem precisar atualizá-los individualmente.
Exemplo: winget upgrade --all

