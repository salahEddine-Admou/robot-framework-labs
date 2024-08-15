*** Settings ***
Resource  ../resources/common_keywords.robot

*** Keywords ***
Go To Contact Us Page
    Click Link  xpath=//a[@href='/contact_us']

Verify Contact Us Page
    Element Should Be Visible  xpath=//h2[contains(text(),'Get In Touch')]
