*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CARRINHO_SELECIONAPRODUTO}    //img[contains(@alt,'Console Xbox Series S')]
${CARRINHO_CONFERIRPRODUTO}     //span[@class='a-size-large product-title-word-break'][contains(.,'Console Xbox Series S')]
${CARRINHO_ADDCARINHO}          //input[contains(@name,'submit.add-to-cart')]
${CARRINHO_CONFERIRCARRINHO}    //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
${CARRINHO_IRCARRINHO}          //a[@class='a-button-text']
${CARRINHO_CARRINHO}            //h1[contains(.,'Carrinho de compras')]
${CARRINHO_REMOVERPRODUTO}      //input[@value='Excluir']
${CARRINHO_CONFIRMAR_REMOCAO}   //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
        



*** Keywords ***

Adicionar o produto "Xbox Series S" no carrinho
    Click Element                                locator=${CARRINHO_SELECIONAPRODUTO}
    Wait Until Element Is Visible                locator=${CARRINHO_CONFERIRPRODUTO}
    Click Element                                locator=${CARRINHO_ADDCARINHO}    
    Element Should Be Visible                    locator=${CARRINHO_CONFERIRCARRINHO} 


Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Element Should Be Visible         locator=${CARRINHO_CONFERIRCARRINHO} 
    Click Element                     locator=${CARRINHO_IRCARRINHO} 
    Wait Until Element Is Visible     locator=${CARRINHO_CARRINHO} 


Remover o produto "Console Xbox Series S" do carrinho
    Click Element                    locator=${CARRINHO_REMOVERPRODUTO}

Verificar se o carrinho fica vazio   
    Wait Until Element Is Visible    locator=${CARRINHO_CONFIRMAR_REMOCAO}