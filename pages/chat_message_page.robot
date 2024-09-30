*** Settings ***
Library         SeleniumLibrary
Variables       ../resources/locators/login_page.py
Variables       ../resources/data/testdata.py
Variables       ../resources/locators/base_page.py
Variables       ../resources/locators/chat_message_page.py


*** Keywords ***
Go To List Message Page
    Wait Until Element Is Visible    locator=${MenuChatMessage}    timeout=${timeOutMedium}
    Click Element    locator=${MenuChatMessage}
    Wait Until Element Is Visible    locator=${MenuListMessage}    timeout=${timeOutMedium}
    Click Element    locator=${MenuListMessage}
    Wait Until Element Is Visible    locator=${ListMessagePage}

Go To Blast Message Page
    Wait Until Element Is Visible    locator=${MenuChatMessage}    timeout=${timeOutMedium}
    Click Element    locator=${MenuChatMessage}
    Wait Until Element Is Visible    locator=${MenuBlastMessage}    timeout=${timeOutMedium}
    Click Element    locator=${MenuBlastMessage}
    Wait Until Element Is Visible    locator=${BlastMessagePage}
