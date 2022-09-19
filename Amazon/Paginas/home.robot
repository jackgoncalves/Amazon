
*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${HOME_URL}                    https://www.amazon.com.br/
${HOME_DIGITARNOMEPRODUTO}     twotabsearchtextbox 
${HOME_BOTAOPESQUISA}          nav-search-submit-button
${HOME_PRODUTOPESQUISADO}      (//span[contains(.,'Console Xbox Series S')])[2]


*** Keywords ***

Acessar a home page do site Amazon.com.br
   Go To    url=${HOME_URL}

   

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa   
    Input Text    locator=${HOME_DIGITARNOMEPRODUTO}    text=${PRODUTO}


Clicar no botão de pesquisa
    Click Element    locator=${HOME_BOTAOPESQUISA} 


 Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
     Wait Until Element Is Visible    locator=${HOME_PRODUTOPESQUISADO}


        


