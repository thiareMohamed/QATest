*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/locators.py
Variables          ../PageObjects/variables.py


*** Keywords ***
Contact
    Sleep    1
    Wait Until Element Is Visible    id=id_MainMenuItem_HomeContactUs
    Click Element    id=id_MainMenuItem_HomeContactUs
    Sleep    1
    Wait Until Element Is Visible    id=id_Btn_GhanaOfficeDetails
    Click Element    id=id_Btn_GhanaOfficeDetails
    Page Should Contain    Accra Office: 2nd Floor, Faaco Complex Building, Opposite Ghana Police Training School (Tesano) Accra
