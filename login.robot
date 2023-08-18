*** Settings ***
Library                 SeleniumLibrary


*** Variables ***
${URL}                  https://demo.nopcommerce.com/
${browser}              chrome
${loginLink}            xpath=//a[@class='ico-login']
${emailInputBox}        id=Email
${passwordInputBox}     id=Password
${loginButton}          xpath=//button[@class='button-1 login-button']


*** Test Cases ***
Login using a valid email and a valid password
    open browser    ${URL}      ${browser}
    login
    close browser


*** Keywords ***
Login
    wait until element is visible   ${loginLink}
    click element   ${loginLink}
    wait until element is visible   ${emailInputBox}
    input text      ${emailInputBox}        abcd@gmail.com
    input text      ${passwordInputBox}     password123
    click button    ${loginButton}
    sleep   5
