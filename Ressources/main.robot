*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/locators.py
Variables          ../PageObjects/variables.py
Resource          ./command.robot
Resource         ./contact.robot

Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Test Case 0
    Maximize Browser Window
    Login
    Contact
    Logout
