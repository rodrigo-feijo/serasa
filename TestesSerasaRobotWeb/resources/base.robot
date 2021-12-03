*** Settings ***
Library  SeleniumLibrary            #Irei utilizar as keywords da biblioteca do Selenium 

*** Variables ***
  #${BASE_URL}                   https://www.serasa.com.br/  

*** Keywords ***
Start session
  Open Browser                  about:blank    chrome  #Abre o navegador
  Set Selenium Implicit Wait    5                      #O Selenium tem até 5 segundos para encontrar o elemento
  Maximize Browser Window                              #Maximiza a tela para melhor visualização

End session
  Close Browser               #Fecha sessão

End test
  Capture Page Screenshot     #Captura de evidências