Language:pt-BR
*** Settings ***
Documentation       Suite de Teste Orange HRM

Resource            ../Resources/Main.robot

Test Setup          Start Navegator    # Inicia o Navegador

*** Test Cases ***

CT-01 Realizar a alteração de informações do cadastro
    Dado que eu esteja na HomePage Orange HRM
    Quando inserir meu usuario e senha para logar na aplicacao
    E Realizar o preenchimento pra alteracao do cadastro
    Então O sistema exibe a mensagem de alteração com sucesso