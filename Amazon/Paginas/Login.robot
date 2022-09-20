*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGIN_CLICKLOGIN}      nav-link-accountList-nav-line-1
${LOGIN_MSGFAZERLOGIN}   //h1[contains(.,'Fazer login')]


*** Keywords ***

Clicar em fazer login
    Click Element                    locator=${LOGIN_CLICKLOGIN}
    Wait Until Element Is Visible    locator=//h1[contains(.,'Fazer login')]

Inserir email e senha
    [Arguments]      ${email}       ${senha}
                     
    Input Text       locator=ap_email       text=${email}
    Click Element    locator=continue 
    Input Password   locator=ap_password    password=${senha}
    
    

    
