*** Settings ***
Resource  ../resources/common_keywords.robot
Resource  ../pages/product_page.robot

*** Test Cases ***
Verify All Products Page
    [Documentation]  Test Case 8: Verify All Products and product detail page
    Open Browser To Base URL
    Go To Product Page
    Verify Product Page
    Close Browser
