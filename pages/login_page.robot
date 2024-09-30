*** Settings ***
Library         SeleniumLibrary
Variables    ../resources/locators/login_page.py
Variables    ../resources/data/testdata.py
Variables    ../resources/locators/base_page.py
*** Keywords ***
Input Form Login
    [Arguments]    ${Username}    ${Password}
    Wait Until Element Is Visible    locator=${LoginUsernameInput}    timeout=${timeOutMedium}
    Input Text    locator=${LoginUsernameInput}    text=${Username}
    Input Text    locator=${LoginPasswordInput}    text=${Password}

Submit Login Form
    Wait Until Element Is Visible    locator=${LoginSubmitButton}    timeout=${timeOutShort}
    Click Element    locator=${LoginSubmitButton}

Success Login Validation
    Wait Until Element Is Visible    locator=${ProfileNavMenu}    timeout=${timeOutMedium}

login Fail Validation
    Sleep    5
    Element Should Not Be Visible    locator=${ProfileNavMenu}