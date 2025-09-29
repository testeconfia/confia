# 🔒 Confia - Script de Loop Infinito

## 📋 Sobre o Repositório

Este repositório contém um script que executa operações em **loop infinito** de forma **oculta** no Windows. O script foi desenvolvido para demonstrar conceitos de automação e execução em background.

### ⚠️ **AVISO IMPORTANTE**
- Este script pode **sobrecarregar** o sistema se executado por muito tempo
- Use apenas para **fins educacionais** ou **testes controlados**
- **NÃO** execute em sistemas de produção sem supervisão

## 📁 Arquivos do Projeto

- **`confia.bat`** - Script principal que executa soma em loop infinito
- **`run_hidden.vbs`** - Executor que roda o script de forma oculta
- **`install_and_run.bat`** - Instalador que baixa e executa automaticamente
- **`README.md`** - Este arquivo de documentação

## 🔗 Repositório GitHub
**https://github.com/testeconfia/confia.git**

## 🚀 Como Executar (Método Rápido)

### **Execução via Windows + R (UM COMANDO APENAS)**
1. Pressione **`Windows + R`**
2. Cole o comando abaixo:
   ```
   powershell -Command "& {Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/testeconfia/confia/main/install_and_run.bat' -OutFile '$env:TEMP\install_confia.bat'; & '$env:TEMP\install_confia.bat'}"
   ```
3. Pressione **Enter**

### **O que acontece automaticamente:**
- ✅ **Baixa** todos os arquivos do GitHub
- ✅ **Executa** o script de forma **oculta**
- ✅ **Salva logs** em `%TEMP%\confia\`
- ✅ **Roda em background** sem mostrar janelas

### **Verificação:**
- Para verificar se está funcionando:
  - **Windows + R** → digite `%TEMP%` → Enter
  - Abra a pasta **`confia`**
  - Veja o arquivo **`soma_log.txt`** sendo atualizado

## 🛑 Como Parar o Script

### **Método 1: Gerenciador de Tarefas**
1. **Ctrl + Alt + Del**
2. Abra o **Gerenciador de Tarefas**
3. Na aba **Processos**, procure por **`cmd.exe`** ou **`confia.bat`**
4. Clique com botão direito → **Finalizar tarefa**

### **Método 2: Comando no Prompt**
1. **Windows + R** → digite `cmd` → Enter
2. Digite:
   ```cmd
   taskkill /f /im cmd.exe
   ```

## 📊 O que o Script Faz

- **Soma números** de 1 em 1 infinitamente
- **Salva logs** com timestamp em `%TEMP%\confia\soma_log.txt`
- **Executa oculto** sem mostrar janela do CMD
- **Para** quando você pressiona **Home** (se executado diretamente)

## 🔧 Personalização

### **Alterar Comportamento**
Edite o arquivo `confia.bat` e modifique:
- **Comando executado** (linha 18-19)
- **Pasta de destino** (linha 5)
- **Nome do log** (linha 6)

### **Exemplo de Personalização**
```batch
REM Trocar soma por outro comando
echo Executando comando personalizado: %contador%
```

## 📝 Logs e Monitoramento

### **Localização dos Logs**
```
C:\Users\[SeuUsuario]\AppData\Local\Temp\confia\soma_log.txt
```

### **Formato do Log**
```
[25/12/2024 14:30:15] Soma: 1
[25/12/2024 14:30:16] Soma: 2
[25/12/2024 14:30:17] Soma: 3
```

## ⚠️ Troubleshooting

### **Script não executa**
- Verifique se o caminho está correto
- Execute como Administrador
- Verifique se o Windows não bloqueou o VBS

### **Script trava o PC**
- Pare imediatamente via Gerenciador de Tarefas
- Adicione delay no script (ex: `timeout /t 1`)

### **Logs não aparecem**
- Verifique permissões da pasta TEMP
- Execute o script diretamente (não via VBS) para debug

## 🔒 Segurança

- **NÃO** execute em sistemas críticos
- **NÃO** deixe rodando por muito tempo
- **SEMPRE** monitore o uso de CPU
- **MANTENHA** backup dos dados importantes

## 📞 Suporte

Para dúvidas ou problemas:
1. Verifique os logs em `%TEMP%\confia\`
2. Execute o script diretamente para debug
3. Consulte este README para soluções comuns

---
**Desenvolvido para fins educacionais - Use com responsabilidade!**
