*** Settings ***
Documentation    Variavies para o testes
Resource    ../Resources/Main.robot
*** Variables ***
&{LOGIN}    
...    user=Admin
...    password=admin123

${file}            file.jpg

${BROWASER}         chrome

${URL}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

${TIMEOUT}          60


${databirth}        1979-08-10

${MSG_SUCCESS}    Success${\n}Successfully Updated