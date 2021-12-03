*** Settings ***
Resource  ../resources/steps.robot  #Especifico de onde vem as keywords

Suite Setup     Start session  #Abre sessão (navegador)
Suite Teardown  End session    #Fecha sessão (navegador)
Test Teardown   End test       #Final de cada teste captura uma imagem e anexa ao report 

*** Test Cases ***
Esqueci minha senha
  [Template]        Recuperar senha esquecida
  04511300909       Insira o código de segurança

*** Keywords ***
Recuperar senha esquecida
  [Arguments]      ${CPF}      ${expect_message}

  Dado que acesso a página inicial para refazer minha senha 
  Quando inserir os dados necessários para recuperação ${CPF}
  Então a mensagem ${expect_message} é exibida