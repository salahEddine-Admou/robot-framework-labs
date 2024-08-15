*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}               http://automationexercise.com
${BROWSER}           chrome
${USERNAME}          TestUser
${EMAIL}             salah@example.com
${PASSWORD}          P@ssword123
${FIRST_NAME}        John
${LAST_NAME}         Doe
${COMPANY}           TestCompany
${ADDRESS1}          123 Test Street
${ADDRESS2}          Apt 456
${COUNTRY}           United States
${STATE}             California
${CITY}              Los Angeles
${ZIPCODE}           90001
${MOBILE}            +123456789

*** Test Cases ***
Register User
    [Documentation]  Test Case 1: Register User
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Verify Home Page Is Visible
    Click Element  xpath=//a[@href='/login']
    Element Text Should Be  xpath=//h2[contains(text(),'New User Signup!')]  New User Signup!
    Input Text  xpath=//input[@data-qa='signup-name']  ${USERNAME}
    Input Text  xpath=//input[@data-qa='signup-email']  ${EMAIL}
    Click Button  xpath=//button[@data-qa='signup-button']
    Element Text Should Be  xpath=//b[contains(text(),'Enter Account Information')]  ENTER ACCOUNT INFORMATION
    Select Radio Button  xpath=//input[@value='Mr']  Mr.
    Input Text  xpath=//input[@data-qa='password']  ${PASSWORD}
    Select From List By Value  xpath=//select[@data-qa='days']  1
    Select From List By Value  xpath=//select[@data-qa='months']  1
    Select From List By Value  xpath=//select[@data-qa='years']  2000
    Click Checkbox  xpath=//input[@data-qa='newsletter']
    Click Checkbox  xpath=//input[@data-qa='optin']
    Input Text  xpath=//input[@data-qa='first_name']  ${FIRST_NAME}
    Input Text  xpath=//input[@data-qa='last_name']  ${LAST_NAME}
    Input Text  xpath=//input[@data-qa='company']  ${COMPANY}
    Input Text  xpath=//input[@data-qa='address1']  ${ADDRESS1}
    Input Text  xpath=//input[@data-qa='address2']  ${ADDRESS2}
    Select From List By Value  xpath=//select[@data-qa='country']  United States
    Input Text  xpath=//input[@data-qa='state']  ${STATE}
    Input Text  xpath=//input[@data-qa='city']  ${CITY}
    Input Text  xpath=//input[@data-qa='zipcode']  ${ZIPCODE}
    Input Text  xpath=//input[@data-qa='mobile_number']  ${MOBILE}
    Click Button  xpath=//button[@data-qa='create-account']
    Element Text Should Be  xpath=//b[contains(text(),'Account Created!')]  ACCOUNT CREATED!
    Click Button  xpath=//a[@data-qa='continue-button']
    Element Text Should Be  xpath=//li[contains(text(),'Logged in as')]  Logged in as ${USERNAME}
    Click Element  xpath=//a[@href='/delete_account']
    Element Text Should Be  xpath=//b[contains(text(),'Account Deleted!')]  ACCOUNT DELETED!
    Click Button  xpath=//a[@data-qa='continue-button']
    Close Browser

*** Keywords ***
Verify Home Page Is Visible
    Title Should Be  Automation Exercise
