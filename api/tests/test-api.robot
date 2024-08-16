*** Settings ***
Resource    ../resources/common.robot

*** Test Cases ***

# Test Cases for Product List API
Get All Products List
    [Documentation]    Verify that we can get the list of all products
    Get All Products List

Post To All Products List
    [Documentation]    Verify that POST request to productsList is not allowed
    Post To All Products List

# Test Cases for Brands List API
Get All Brands List
    [Documentation]    Verify that we can get the list of all brands
    Get All Brands List

Put To All Brands List
    [Documentation]    Verify that PUT request to brandsList is not allowed
    Put To All Brands List

# Test Cases for Search Product API
Post To Search Product
    [Documentation]    Verify that we can search for products with a valid search_product parameter
    [Arguments]    ${search_product}=jeans
    Post To Search Product    ${search_product}

Post To Search Product Without Parameter
    [Documentation]    Verify that POST request to searchProduct without search_product parameter returns a 400 error
    Post To Search Product Without Parameter

# Test Cases for Verify Login API
Post To Verify Login With Valid Details
    [Documentation]    Verify login with valid credentials
    [Arguments]    ${email}=test@example.com    ${password}=test123
    Post To Verify Login With Valid Details    ${email}    ${password}

Post To Verify Login Without Email
    [Documentation]    Verify login with a missing email parameter returns a 400 error
    [Arguments]    ${password}=test123
    Post To Verify Login Without Email    ${password}

Delete To Verify Login
    [Documentation]    Verify that DELETE request to verifyLogin is not allowed
    Delete To Verify Login

Post To Verify Login With Invalid Details
    [Documentation]    Verify login with invalid credentials returns a 404 error
    [Arguments]    ${email}=invalid@example.com    ${password}=wrongpassword
    Post To Verify Login With Invalid Details    ${email}    ${password}

# Test Case for Create Account API
Post To Create Account
    [Documentation]    Verify that we can create a new user account
    [Arguments]    ${name}=John    ${email}=john.doe@example.com    ${password}=password123    ${title}=Mr    ${birth_date}=01    ${birth_month}=01    ${birth_year}=1990    ${firstname}=John    ${lastname}=Doe    ${company}=Company    ${address1}=123 Street    ${address2}=Suite 456    ${country}=USA    ${zipcode}=12345    ${state}=State    ${city}=City    ${mobile_number}=1234567890
    Post To Create Account    ${name}    ${email}    ${password}    ${title}    ${birth_date}    ${birth_month}    ${birth_year}    ${firstname}    ${lastname}    ${company}    ${address1}    ${address2}    ${country}    ${zipcode}    ${state}    ${city}    ${mobile_number}
