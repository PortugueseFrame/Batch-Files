@echo off
echo.
:menu
echo.
echo 1. Calculadora
echo 2. Notepad
choice /c 12 /m "O que deseja executar?"
if errorlevel==2 goto notepad
if errorlevel==1 goto calc

:notepad
start notepad.exe
goto menu

:calc
start calc.exe
goto menu