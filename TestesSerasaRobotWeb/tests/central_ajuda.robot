*** Settings ***
Resource  ../resources/steps.robot  #Especifico de onde vem as keywords

Suite Setup     Start session  #Abre sessão (navegador)
Suite Teardown  End session    #Fecha sessão (navegador)
Test Teardown   End test       #Final de cada teste captura uma imagem e anexa ao report 

*** Test Cases ***
Acessando Central de ajuda
  [Template]        Buscar por ajuda      
  Limpa nome     

*** Keywords ***
Buscar por ajuda     
  [Arguments]      ${Texto_Busca}

  Dado que acesso a página inicial da aplicação
  Quando realizar uma busca pela central ${Texto_Busca}
  Então são exibidas as instruções necessárias