@echo off
REM Script de soma em loop infinito - Pressione Home para sair
REM Arquivos salvos na pasta TEMP do Windows
set /a contador=0
set "TEMP_DIR=%TEMP%\confia"
set "LOG_FILE=%TEMP_DIR%\soma_log.txt"

REM Criar pasta temporária se não existir
if not exist "%TEMP_DIR%" mkdir "%TEMP_DIR%"

echo Iniciando soma em loop infinito...
echo Pasta de destino: %TEMP_DIR%
echo Log: %LOG_FILE%
echo Pressione HOME para sair
echo.

:loop
set /a contador+=1
echo Soma: %contador%

REM Salvar contador no arquivo de log
echo [%date% %time%] Soma: %contador% >> "%LOG_FILE%"

REM Verificar se tecla Home foi pressionada (código 71)
choice /c 1234567890 /n /t 1 /d 1 >nul 2>&1
if errorlevel 71 goto fim

goto loop

:fim
echo.
echo Loop encerrado. Total: %contador%
echo Arquivos salvos em: %TEMP_DIR%
echo Log salvo em: %LOG_FILE%
pause
