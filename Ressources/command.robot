*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/locators.py
Variables          ../PageObjects/variables.py

*** Keywords ***
Login
    Input Text    id=id_Email_Field    ${EMAIL}
    Input Text    id=id_Password_Field    ${PASSWORD}
    Click Element    id=id_btnLogin

Logout
    Sleep    1
    Wait Until Element Is Visible    id=id_LoginPartial_Header
    Mouse Down   id=id_LoginPartial_Header
    Click Element    id=id_logoutForm