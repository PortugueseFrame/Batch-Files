@echo off
echo.
goto menu

:and
set /p v1=Indique o primeiro valor (0 ou 1):
set /p v2=Indique o segundo valor (0 ou 1):
set /a "resultado=v1 & v2"
goto resultado

:or
set /p v1=Indique o primeiro valor (0 ou 1):
set /p v2=Indique o segundo valor (0 ou 1):
set /a "resultado=v1 | v2"
goto resultado

:not
set /p v1=Indique o valor (0 ou 1):
set /a "resultado=1 - v1"
goto resultado

:nand
set /p v1=Indique o primeiro valor (0 ou 1):
set /p v2=Indique o segundo valor (0 ou 1):
set /a "resultado=1 - (v1 & v2)"
goto resultado

:nor
set /p v1=Indique o primeiro valor (0 ou 1):
set /p v2=Indique o segundo valor (0 ou 1):
set /a "resultado=1 - (v1 | v2)"
goto resultado

:xor
set /p v1=Indique o primeiro valor (0 ou 1):
set /p v2=Indique o segundo valor (0 ou 1):
set /a "resultado=v1 ^ v2"
goto resultado

:soma
echo.
set /p v1=Indique o primeiro valor:
set /p v2=Indique o segundo valor:
set /a resultado=v1+v2
goto resultado
:end

:divisao
echo.
set /p v1=Indique o primeiro valor:
set /p v2=Indique o segundo valor:
set /a resultado=v1/v2
goto resultado
:end

:subtracao
echo.
set /p v1=Indique o primeiro valor:
set /p v2=Indique o segundo valor:
set /a resultado=v1-v2
goto resultado
:end

:multiplicacao
echo.
set /p v1=Indique o primeiro valor:
set /p v2=Indique o segundo valor:
set /a resultado=v1*v2
goto resultado
:end

:historico
start operacoes.txt
goto menu
:end

:calcLogica
echo Bem-vindo a Calculadora de Operacoes Logicas de 0's e 1's!
cls
echo.
echo 1. AND
echo 2. NAND
echo 3. OR
echo 4. NOR
echo 5. NOT
echo 6. XOR
echo 7. Calculadora Normal
echo.

set /p op=Escolha a operacao a realizar:

if "%op%"=="1" (
    call :and
    echo.
)  else if "%op%"=="2" (
    call :nand
    echo.
)  else if "%op%"=="3" (
    call :or
    echo.
)  else if "%op%"=="4" (
    call :nor
    echo.
)  else if "%op%"=="5" (
    call :not
    echo.
)  else if "%op%"=="6" (
    call :xor
    echo.
)  else if "%op%"=="7" (
    goto menu
)  else if %op% GTR 7 (
    echo.
    echo Escolha invalida. Por favor, escolha uma opcao valida.
    pause
    goto calcLogica
)  else if %op% LSS 0 (
    echo.
    echo Escolha invalida. Por favor, escolha uma opcao valida.
    pause
    goto calcLogica
    )
:end

:menu
cls
echo Bem-vindo a Calculadora!
echo.
echo 1. Somar
echo 2. Subtrair
echo 3. Multiplicar
echo 4. Dividir
echo 5. Calculadora de numeros logicos (0,1)
echo 6. Ver Historico Operacoes
echo.
set /p op=Escolha a operacao a realizar:
if "%op%"=="1" (
    call :soma
    echo.
)  else if "%op%"=="2" (
    call :subtracao
    echo.
)  else if "%op%"=="3" (
    call :multiplicacao
    echo.
)  else if "%op%"=="4" (
    if "%v2%"=="0" (
        echo.
        echo Erro: Divisao por zero nao e possivel.
    ) else (
        call :divisao
        echo.
    ) )
   else if "%op%"=="5" (
      goto calcLogica
)  else if "%op%"=="6"(
      call :historico
)  else if %op% GTR 6 (
    echo.
    echo Escolha invalida. Por favor, escolha uma opcao valida.
    pause
    goto menu
)  else if %op% LSS 0 (
    echo.
    echo Escolha invalida. Por favor, escolha uma opcao valida.
    pause
    goto menu
    )
:end

:resultado
echo O resultado e: %resultado%
(
    echo O resultado é: %resultado%
) >> operacoes.txt
:end

pause
goto menu