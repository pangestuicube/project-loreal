*** Settings ***
Documentation       Suite description

Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/login_page.robot
Resource            ../pages/chat_message_page.robot

Test Setup          Start Test Case
Test Teardown       End Test Case


*** Test Cases ***
TC009.Successfully Show All Listed Customer Message
    login_page.User Login
    chat_message_page.Go To List Message Page

TC017.Successfully Show All Blasted Messages
    login_page.User Login
    chat_message_page.Go To Blast Message Page
