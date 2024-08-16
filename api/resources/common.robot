*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://automationexercise.com/api

*** Keywords ***
Get All Products List
    [Documentation]    Send a GET request to retrieve all products
    Create Session    api_session    ${BASE_URL}
    ${response}=    GET    api_session    /productsList
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}    console=True

Post To All Products List
    [Documentation]    Send a POST request to /productsList, expecting a 405 response
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /productsList
    Should Be Equal As Numbers    ${response.status_code}    405
    Log    ${response.text}    console=True

Get All Brands List
    [Documentation]    Send a GET request to retrieve all brands
    Create Session    api_session    ${BASE_URL}
    ${response}=    GET    api_session    /brandsList
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}    console=True

Put To All Brands List
    [Documentation]    Send a PUT request to /brandsList, expecting a 405 response
    Create Session    api_session    ${BASE_URL}
    ${response}=    PUT    api_session    /brandsList
    Should Be Equal As Numbers    ${response.status_code}    405
    Log    ${response.text}    console=True

Post To Search Product
    [Documentation]    Send a POST request to /searchProduct with a search_product parameter
    [Arguments]    ${search_product}
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /searchProduct    data=search_product=${search_product}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}    console=True

Post To Search Product Without Parameter
    [Documentation]    Send a POST request to /searchProduct without a search_product parameter, expecting a 400 response
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /searchProduct
    Should Be Equal As Numbers    ${response.status_code}    400
    Log    ${response.text}    console=True

Post To Verify Login With Valid Details
    [Documentation]    Send a POST request to /verifyLogin with valid credentials
    [Arguments]    ${email}    ${password}
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /verifyLogin    data=email=${email}&password=${password}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}    console=True

Post To Verify Login Without Email
    [Documentation]    Send a POST request to /verifyLogin without the email parameter, expecting a 400 response
    [Arguments]    ${password}
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /verifyLogin    data=password=${password}
    Should Be Equal As Numbers    ${response.status_code}    400
    Log    ${response.text}    console=True

Delete To Verify Login
    [Documentation]    Send a DELETE request to /verifyLogin, expecting a 405 response
    Create Session    api_session    ${BASE_URL}
    ${response}=    DELETE    api_session    /verifyLogin
    Should Be Equal As Numbers    ${response.status_code}    405
    Log    ${response.text}    console=True

Post To Verify Login With Invalid Details
    [Documentation]    Send a POST request to /verifyLogin with invalid credentials, expecting a 404 response
    [Arguments]    ${email}    ${password}
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /verifyLogin    data=email=${email}&password=${password}
    Should Be Equal As Numbers    ${response.status_code}    404
    Log    ${response.text}    console=True

Post To Create Account
    [Documentation]    Send a POST request to /createAccount to register a new user
    [Arguments]    ${name}    ${email}    ${password}    ${title}    ${birth_date}    ${birth_month}    ${birth_year}    ${firstname}    ${lastname}    ${company}    ${address1}    ${address2}    ${country}    ${zipcode}    ${state}    ${city}    ${mobile_number}
    Create Session    api_session    ${BASE_URL}
    ${response}=    POST    api_session    /createAccount    data=name=${name}&email=${email}&password=${password}&title=${title}&birth_date=${birth_date}&birth_month=${birth_month}&birth_year=${birth_year}&firstname=${firstname}&lastname=${lastname}&company=${company}&address1=${address1}&address2=${address2}&country=${country}&zipcode=${zipcode}&state=${state}&city=${city}&mobile_number=${mobile_number}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.text}    console=True
