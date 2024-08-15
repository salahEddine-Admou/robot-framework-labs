*** Settings ***
Resource  ../resources/common_keywords.robot

*** Keywords ***
Go To Cart Page
    Click Link  xpath=//a[@href='/view_cart']

Verify Cart Page
    Element Should Be Visible  xpath=//h2[contains(text(),'Shopping Cart')]
