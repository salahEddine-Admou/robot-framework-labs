*** Settings ***
Resource  ../resources/common_keywords.robot

*** Keywords ***
Go To Signup Page
    Click Link  xpath=//a[@href='/signup']

Verify Signup Page
    Element Should Be Visible  xpath=//h2[contains(text(),'New User Signup!')]
