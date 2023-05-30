@echo off

set /p value1=Digite o primeiro valor: 
set /p value2=Digite o segundo valor: 

set /a "result = value1 & value2"
set /a "result2 = value1 | value2"
set /a "result3 = vaLue1 ^ value2"

echo O resultado da operacao AND: %result%
echo O resultado da operacao OR: %result2%
echo O resultado da operacao XOR: %result3%