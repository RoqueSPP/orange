*** Settings ***

Resource    ../Resources/Main.robot
Library    XML

*** Keywords ***

limpa
    [arguments]    ${LOCATOR}
    ${TEXT}    Get Value    ${LOCATOR}
    ${NUMBER}    Get Length    ${TEXT}
    FOR    ${i}    IN RANGE    ${NUMBER}
    IF    ${i} == -2    CONTINUE
    Press Keys    None    ARROW_RIGHT
    Press Keys    None    BACKSPACE
    END

Limpar Campos
    Sleep    2
    Press Key    ${LOGINUSER.firstName}     ${SPACE}
    Sleep    1
    limpa                              ${LOGINUSER.firstName}
        
    Click Element         ${LOGINUSER.middleName}
    limpa                 ${LOGINUSER.middleName}
    Sleep    1

    Click Element          ${LOGINUSER.lastName}
    limpa                  ${LOGINUSER.lastName}
    Sleep    1

    Click Element          ${LOGINUSER.employeeId}
    limpa                  ${LOGINUSER.employeeId}
    Sleep    1

    Click Element          ${LOGINUSER.otherID}
    limpa                  ${LOGINUSER.otherID}
    Sleep    1

    Click Element          ${LOGINUSER.driverLicense}
    limpa                  ${LOGINUSER.driverLicense}
    Sleep    1
    
    Press Keys        ${LOGINUSER.licenseExpire}    ${SPACE}
    limpa                ${LOGINUSER.licenseExpire} 
   