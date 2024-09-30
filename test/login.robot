*** Settings ***
Documentation       Suite description

Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/login_page.robot

Test Setup          Start Test Case
Test Teardown       End Test Case

*** Test Cases ***
TC001.Successfully Login with Valid Credentials
    login_page.Input Form Login    Username=${LoginUsername}    Password=${LoginPassword}
    login_page.Submit Login Form
    login_page.Success Login Validation