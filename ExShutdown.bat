@echo off

set /p minutos=Digite o numero de minutos: 
set /p segundos=Digite o numero de segundos: 

set /a totalSegundos = minutos * 60 + segundos

echo O computador sera desligado em %minutos% minutos e %segundos% segundos.

shutdown /s /t %totalSegundos%