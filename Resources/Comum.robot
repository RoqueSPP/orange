*** Settings ***
Documentation    Ações comuns para todos os testes
Resource    ../Resources/Main.robot

*** Keywords ***

Start Navegator

    Open Browser                ${URL}    ${BROWASER}
    Set Selenium Timeout        ${TIMEOUT}
    Maximize Browser Window

que eu esteja na HomePage Orange HRM

    Wait Until Element Is Visible            ${LOGINPAGE}


