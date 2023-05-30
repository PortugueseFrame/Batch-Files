@echo off

set /p nota=Insira a nota:  

if %nota% gtr 20 (
   echo nota invalida
) else if %nota% lss 0 (
   echo nota invalida
) else if %nota% geq 10 (
   echo nota inserida positiva, verde
) else (
   echo nota inserida negativa, vermelho
) 
pause