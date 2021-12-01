# Processo seletivo - Serasa
Testes relacionados ao processo seletivo da Serasa

Motivos pela escolha do Robot Framework:
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

Guia de instalação
1. Baixe e instale a última versão do Python, de acordo com seu sistema operacional: https://www.python.org/downloads/
2. No prompt de comando do seu SO execute "python --version" (verificar se foi instalado com sucesso)
3. Se o Python tiver sido instalado com sucesso execute "pip install robotframework" para instalação do Robot Framework
4. Em seguida execute "robot --version" (verificar se foi instalado com sucesso)
5. Instale também o Selenium com o comando "pip install --upgrade robotframework-seleniumlibrary" 
6. Use a IDE do seu gosto. Eu utilizei VSCode com as extensões do Python e Robot (opcionais).
7. Instale o driver através do link: https://chromedriver.chromium.org/downloads
8. O Chromedriver deve ser setado nas variáveis de ambiente (exemplo de local: c:\Program Files\webdrivers\chromedriver) 
   
   Caso esteja utilizando Linux o comando para mapear é "$ export PATH="$PATH:/caminho/do/chromedriver""
  
Comandos para executar o Robot
1. Após abrir o projeto, abrir o prompt de comando do seu SO e navegar até a pasta que estão os executáveis (.robot)
2. Para executar digite o comando "robot NomeDoTeste.robot"
3. Para executar todos de uma vez "robot *.robot" 
