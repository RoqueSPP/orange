*** Settings ***
Documentation    Redefinir senha Rede de Provedores
Resource    ../Resources/Main.robot
*** Keywords ***
 
Realizar o preenchimento pra alteracao do cadastro
    ${INFO}     Data Inf
################################
    Wait Until Element Is Visible            ${TITLEPAGE}
    Click Element                            ${LOGINUSER.myInfo}
    Wait Until Element Is Visible            ${LOGINUSER.firstName}    ${TIMEOUT}
    Limpar Campos
    Sleep    2
    Scroll Element Into View                 ${LOGINUSER.databirth}
    Input Text                               ${LOGINUSER.firstName}               ${INFO}[firstName]
    Input Text                               ${LOGINUSER.lastName}                ${INFO}[lastName]
    Input Text                               ${LOGINUSER.employeeId}              ${INFO}[employee]
    Input Text                               ${LOGINUSER.otherID}                 4788777
    Input Text                               ${LOGINUSER.driverLicense}           4763826
    Input Text                               ${LOGINUSER.licenseExpire}           2024-12-10
    Scroll Element Into View                 ${LOGINUSER.bloodType}
    Click Element                            ${LOGINUSER.listbox}
    ${H}    Get Text    ${LOGINUSER.listbox}
    WHILE   '${H}' != 'Brazilian'
    Press Keys    None     ARROW_DOWN
    Sleep    0.2
    ${H}    Get Text    ${LOGINUSER.listbox}
    END
    Run Keyword If   '${H}' == 'Brazilian'
    ...    Press Keys    None     ENTER
    ...    BREAK

    Click Element                            ${LOGINUSER.materialstatus}
    ${H}    Get Text    ${LOGINUSER.materialstatus}
    WHILE   '${H}' != 'Married'
    Press Keys    None     ARROW_DOWN
    Sleep    0.2
    ${H}    Get Text    ${LOGINUSER.materialstatus}
    END
    Run Keyword If   '${H}' == 'Married'
    ...    Press Keys    None     ENTER
    ...    BREAK
    
    Click Element                            ${LOGINUSER.databirth}
    limpa                                    ${LOGINUSER.databirth}
    Input Text                               ${LOGINUSER.databirth}               ${databirth}
    Click Element                            ${LOGINUSER.male}
    Click Element                            ${LOGINUSER.save01}
    Sleep    3
    Scroll Element Into View                 ${LOGINUSER.addFile}
    Sleep    1
    Click Element                            ${LOGINUSER.bloodType}
    ${H}    Get Text    ${LOGINUSER.bloodType}
    WHILE   '${H}' != 'O+'
    Press Keys    None     ARROW_DOWN
    Sleep    0.2
    ${H}    Get Text    ${LOGINUSER.bloodType}
    END
    Run Keyword If   '${H}' == 'O+'
    ...    Press Keys    None     ENTER
    ...  ELSE
    ...    Press Keys    None     ARROW_DOWN
    ...    BREAK
    Sleep    2
    Click Element                            ${LOGINUSER.testFild}
    limpa                                    ${LOGINUSER.testFild}
    Input Text                               ${LOGINUSER.testFild}     453
    Click Element                            ${LOGINUSER.save02}
    
    Scroll Element Into View                 ${LOGINUSER.requeri}
    Click Element                            ${LOGINUSER.addFile} 
    Choose File                              ${LOGINUSER.upLoadFile}    ${EXECDIR}\\Data\\${file}
    Scroll Element Into View                 ${LOGINUSER.save03}
    Input Text                               ${LOGINUSER.textArea}    Teste feito com sucesso
    Click Element                            ${LOGINUSER.save03}


O sistema exibe a mensagem de alteração com sucesso
    Wait Until Element Is Visible            ${LOGINUSER.success} 
    Capture Page Screenshot





  
