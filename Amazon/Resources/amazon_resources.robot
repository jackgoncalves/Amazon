
*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome 
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser



