*** Settings ***
Resource  ../resources/common_keywords.robot

*** Keywords ***
Go To Product Page
    Click Link  xpath=//a[@href='/products']

Verify Product Page
    Element Should Be Visible  xpath=//h2[contains(text(),'All Products')]
