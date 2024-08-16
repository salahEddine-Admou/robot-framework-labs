*** Settings ***
Resource  ../resources/common_keywords.robot
Resource  ../pages/checkout_page.robot

*** Test Cases ***
Place Order After Registering
    [Documentation]  Test Case 14: Place Order: Register while Checkout
    Open Browser To Base URL
    Go To Checkout Page
    Verify Checkout Page
    # Additional steps for placing an order
    Close Browser
