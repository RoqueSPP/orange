*** Settings ***

Documentation    Elementos Localizadores das Paginas

*** Variables ***

${TITLEPAGE}    //span[@class="oxd-topbar-header-breadcrumb"]

${LOGINPAGE}    //h5[@class="oxd-text oxd-text--h5 orangehrm-login-title"]

&{HOMEPAGE}
...    user=//input[@name="username"]
...    password=//input[@name="password"]
...    button=//button[@type="submit"]


&{LOGINUSER}
...    myInfo=//a[@href="/web/index.php/pim/viewMyDetails"]
...    firstName=//input[@name='firstName']
...    middleName=//input[@name='middleName']
...    lastName=//input[@name='lastName']
...    employeeId=//form/div[2]/div[1]/div[1]/div/div[2]/input
...    otherID=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[1]/div[2]/div/div[2]/input
...    driverLicense=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[2]/div[1]/div/div[2]/input
...    licenseExpire=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[2]/div[2]/div/div[2]/div/div/input
...    nationaly=css=.oxd-form-row:nth-child(5) > .oxd-grid-3:nth-child(2) > .oxd-grid-item > .oxd-input-field-bottom-space
...    listbox=(//div[@class="oxd-select-text-input"])[1]
...    materialstatus=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[1]/div[2]/div/div[2]/div/div/div[1]
...    databirth=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[1]/div/div[2]/div/div/input
...    male=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[2]/div/div[2]/div[1]/div[2]/div/label/span
...    save01=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[4]/button
...    bloodType=//form/div[1]/div/div/div/div[2]/div/div/div[1]
...    testFild=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[1]/div/div[2]/div/div[2]/input
...    save02=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[2]/button
...    addFile=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[3]/div[1]/div/button
...    upLoadFile=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[3]/div/form/div[1]/div/div/div/div[2]/input
...    requeri=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[3]/div[3]/div/div[1]/div/div[1]/div/label/span/i
...    textArea=//textarea[@placeholder="Type comment here"]
...    save03=//form/div[3]/button[2]
...    success=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[3]/div[3]/div/div[2]/div/div/div[2]/div