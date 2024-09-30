*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../resources/data/testdata.py

*** Variables ***
${BROWSER}    Chrome
${CromeDriverPath}    D:/Icube/QA/R&D/swift/RobotFramework/Drivers/chromedriver-win64/chromedriver.exe
${EdgeDriverPath}     ${CURDIR}/../../Drivers/edgedriver_win64/msedgedriver

*** Keywords ***
Start Test Case
    ${OS}=    Evaluate    platform.system()    platform
    Log    "running on ${OS}-${BROWSER}"
    @{Browser_id}=    Get Browser Ids
    Run Keyword if    @{Browser_id}==[]    Start Test

Start Test
    Open Browser    ${URLWEB}    ${BROWSER}    executable_path=${CromeDriverPath}
    Maximize Browser Window
    Go to   ${URLWEB}
    Execute JavaScript    document.body.style.zoom = "100%"
    Set selenium speed  1

