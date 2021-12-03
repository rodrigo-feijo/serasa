# Processo seletivo - Serasa
Testes relacionados ao processo seletivo da Serasa

**Motivos pela escolha do Robot Framework:**
- Linguagem de alto nível (keywords)
- Aprendizagem em menos tempo
- Fácil manuntenção, criação e execução
- Capaz de automatizar testes de APIs, Web e Mobile
- Pode-se utilizar BDD (Behavior Driven Development)
- Gera logs e reports de forma rápida (.html) e detalhada
- Permite utilizar a IDE de preferência
- Multiplataforma (Windows, MAC e Linux)
- Open Source e sem custo com licenças
- Documentação de fácil acesso e compreensão
- Comunidade ativa

########################################################

**Guia de instalação - WEB**
1. Baixe e instale a última versão do Python em https://www.python.org/downloads/
2. No prompt de comando do seu SO execute "python --version" (verificar se foi instalado com sucesso)
3. Se o Python tiver sido instalado com sucesso execute "pip install robotframework" para instalação do Robot Framework
4. Em seguida execute "robot --version" (verificar se foi instalado com sucesso)
5. Instale também o Selenium com o comando "pip install --upgrade robotframework-seleniumlibrary" 
6. Use a IDE do seu gosto. Eu utilizei VSCode com as extensões do Python e Robot (opcionais)
7. Instale o driver através do link: https://chromedriver.chromium.org/downloads
8. O Chromedriver deve ser setado nas variáveis de ambiente (exemplo de local: c:\Program Files\webdrivers\chromedriver) 
   
   Caso esteja utilizando Linux o comando para mapear é "$ export PATH="$PATH:/caminho/do/chromedriver""
########################################################

**Guia de instalação - APP**
1. Baixe e instale a última versão do Python em https://www.python.org/downloads/
2. No prompt de comando do seu SO execute "python --version" (verificar se foi instalado com sucesso)
3. Se o Python tiver sido instalado com sucesso execute "pip install robotframework" para instalação do Robot Framework
4. Em seguida execute "robot --version" (verificar se foi instalado com sucesso)
5. Baixe e instale a última versão do Node.js em https://nodejs.org/en/
6. Baixe e instale o Java JDK8 (deve ser obrigatoriamente o 8) em https://www.oracle.com/br/technical-resources/
7. Baixe e instale a última versão do Appium ("npm install -g appium", "npm install -g appium-doctor" e "appium-doctor --android") em http://appium.io/downloads.html]
8. Use a IDE do seu gosto, eu utilizei VSCode

**Configurando variáveis de ambiente**
Nas variáveis do sistema inserir 
- Nome da variável "ANDROID_HOME" e Valor "C:\Users\xyz\AppData\Local\Android\Sdk"
- Nome da variável "JAVA_HOME" e valor "C:\Program Files\Java\jdk1.8.0_231" 

**Configurações do Appium**
1. Ao abrir o Appium inserir o Host "0.0.0.0" e Port "4723"
2. Após pressionar o start e o servidor ser inicializado, clicar no inspector (lupa no lado direito superior)
3. Em desired capabilities inserir conforme abaixo

![image](https://user-images.githubusercontent.com/31934627/144534757-c31f746c-daaf-481b-92e3-f88a08eff407.png)

Obs. para obter o udid do dispositivo, seja físico ou virtual, execute "adb devices" no prompt de comando

4. Clique em "Save As" e dê um nome (para que não seja necessário ficar setando toda vez que reiniciar)
5. Ao clicar em "Start Session" o inspector abrirá para navegação e busca de elementos

########################################################

**Comandos para executar o Robot**
1. Após abrir o projeto, abrir o prompt de comando do seu SO e navegar até a pasta que estão os executáveis (.robot)
2. Para executar digite o comando "robot -d ./logs NomeDoTeste.robot"
