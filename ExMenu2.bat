@echo off
echo.
:menu
echo.
echo 1. Google Chrome
echo 2. Particao C:\
echo 3. Microsoft Edge
choice /c 123 /m "Qual aplicacao deseja executar?"
if errorlevel==3 goto edge
if errorlevel==2 goto partc
if errorlevel==1 goto chrome

:chrome
start chrome.exe
echo Google Chrome aberto!
goto menu

:partc
start C:
echo Particao C:\ aberta!
goto menu

:edge
start msedge.exe
echo Microsoft Edge aberto!
goto menu