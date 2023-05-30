@echo off

set /p valor=Insira o valor a comparar: 

if "%valor%"=="2" (
   echo %valor% = 2
) else (
   echo %valor% != 2
)
pause