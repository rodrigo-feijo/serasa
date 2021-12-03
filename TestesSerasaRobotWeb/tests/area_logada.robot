*** Settings ***
Resource  ../resources/steps.robot  #Especifico de onde vem as keywords

Suite Setup     Start session  #Abre sessão (navegador)
Suite Teardown  End session    #Fecha sessão (navegador)
Test Teardown   End test       #Final de cada teste captura uma imagem e anexa ao report 

*** Test Cases ***
Acessando a Área Logada
  [Template]        Tentar acessar área logada      
  93100701020       Não conseguimos carregar estas informações neste momento. Por favor, tente novamente em alguns minutos.

*** Keywords ***
Tentar acessar área logada
  [Arguments]      ${CPF}      ${expect_message}
  
  Dado que acesso a página inicial da aplicação
  Quando inserir o CPF ${CPF}
  Então a mensagem ${expect_message} é exibida