*** Settings ***
Resource  ../resources/common_keywords.robot
Resource  ../pages/cart_page.robot

*** Test Cases ***
Add Products To Cart
    [Documentation]  Test Case 12: Add Products in Cart
    Open Browser To Base URL
    Go To Product Page
    # Assuming you have a keyword to add products to cart
    Add Product To Cart  ${PRODUCT_NAME}
    Go To Cart Page
    Verify Cart Page
    Close Browser
