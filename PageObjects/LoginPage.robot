*** Settings ***
Documentation    Home Page Orange HRM
Resource    ../Resources/Main.robot

*** Keywords ***

#Login Válido=========================================================

# que eu esteja na HomePage rede de Provedores

#     Wait Until Element Is Visible            ${HOMEPAGE.idUser}

inserir meu usuario e senha para logar na aplicacao

    Input Text                               ${HOMEPAGE.user}    ${LOGIN.user}
    Input Text                               ${HOMEPAGE.password}    ${LOGIN.password}
    Capture Page Screenshot
    Click Element                            ${HOMEPAGE.button}
 


