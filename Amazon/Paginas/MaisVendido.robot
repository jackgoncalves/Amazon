*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${MENU_MAIS_VENDIDOS}                 //a[contains(.,'Mais Vendidos')]
${MAISVENDIDO.TITULO_PAGINA}          //span[contains(@class,'a-size-extra-large a-color-base _p13n-zg-banner-landing-page-header_style_zgLandingPageBannerText__3HlJo')]
${MAISVENDIDO.TEXTO_PAGINA}           Mais vendidos   
${MAISVENDIDO.CATEGORIA}              //div[@class='_p13n-zg-nav-tab-all_style_zg-tabs-li-selected-div__3tHnP'][contains(.,'Mais Vendidos')]


*** Keywords ***
Entrar no menu "Mais Vendidos"
    Click Element  locator=${MENU_MAIS_VENDIDOS}

Verificar se aparece a frase "Mais Vendidos"
    Wait Until Page Contains         text=${MAISVENDIDO.TEXTO_PAGINA}  
    Wait Until Element Is Visible    locator=${MAISVENDIDO.TITULO_PAGINA} 

Verificar se o título da página fica "${TITULO}"    
    Title Should Be    title=${TITULO}
    

Verificar se aparece a categoria "Mais Vendidos em Eletrônicos"
    Element Should Be Visible    locator=${MAISVENDIDO.CATEGORIA} 

