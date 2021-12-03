*** Settings ***
Resource  base.robot

*** Keywords ***
Dado que acesso a página inicial da aplicação  #Step genérico
  Go To             https://www.serasa.com.br/  

Dado que acesso a página inicial para refazer minha senha  #Utilizado para ESQUECI MINHA SENHA
  Go To             https://www.serasa.com.br/ 
  Click Element     xpath://*[@id="__next"]/div/div[2]/div/header/div/div[2]/div/div/button
  Click Link        /consultar-meu-cpf
  Click Element     xpath:/html/body/main/div[1]/div/div[2]/a
  
  Input Text        name:cpf         "04511300909"
  Click Button      Continuar

Quando inserir o CPF ${CPF}  #Utilizado para ÁREA LOGADA
  Click Element     xpath://*[@id="__next"]/div/div[2]/div/header/div/div[3]/button
  
  Input Text        name:cpf         "04511300909"              
  Click Button      Continuar

Quando realizar uma busca pela central ${Texto_Busca}  #Utilizado para CENTRAL DE AJUDA
  Click Element     xpath://*[@id="__next"]/div/div[2]/div/header/div/div[2]/nav/a[2]
  
  Input Text        id:query          "Limpa nome"

Quando inserir os dados necessários para recuperação ${CPF}  #Utiizado para ESQUECI MINHA SENHA
  Click Element     xpath://*[@id="__next"]/div/div[2]/div/header/div/div[3]/button
  
  Input Text        name:cpf         "04511300909"              
  Click Button      Continuar

  Click Element     xpath://*[@id="__next"]/div/div/div[2]/div/div/div/form/div[2]/button
  Click Button      Continuar
  
  Click Element     xpath://*[@id="__next"]/div/div/div[2]/div/div/div/div[3]/button[1]

Então a mensagem ${expect_message} é exibida  #Utilizado para ÁREA LOGADA e ESQUECI MINHA SENHA
  Wait Until Page Contains  ${expect_message} 

Então são exibidas as instruções necessárias  #Utilizado para CENTRAL DE AJUDA
  Press Keys        id:query          ENTER