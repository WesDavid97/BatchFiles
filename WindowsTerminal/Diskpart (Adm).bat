@ echo off

color A 
echo  ========
echo  Diskpart
echo  ========

Rem Os parênteses criam um bloco, lista de comandos para diskpart
(
echo list disk
echo select disk 0
echo detail disk
echo select disk 1
echo detail disk
) | diskpart

pause
exit