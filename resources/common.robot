*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Abrir Navegador
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome
    Maximize Browser Window


Fechar Navegador
    Close All Browsers
