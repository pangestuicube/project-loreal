*** Settings ***
Library         SeleniumLibrary
Variables       ../resources/locators/base_page.py
Variables       ../resources/data/testdata.py
Variables       ../resources/locators/login_page.py


*** Keywords ***
End Test Case
    ${IsLogin}=    Run Keyword and Return Status    Wait Until Element Is Visible    ${ProfileNavMenu}
    IF    ${IsLogin}    Logout Account

logout Account
    Click Element    locator=${ProfileNavMenu}
    Wait Until Element Is Visible    locator=${UserLogoutButton}    timeout=${timeOutShort}
    Click Element    locator=${UserLogoutButton}
    Wait Until Element Is Enabled    locator=${LoginSubmitButton}
