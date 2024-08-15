*** Settings ***
Resource  ../resources/common_keywords.robot

*** Keywords ***
Go To Checkout Page
    Click Link  xpath=//a[@href='/checkout']

Verify Checkout Page
    Element Should Be Visible  xpath=//h2[contains(text(),'Checkout')]
