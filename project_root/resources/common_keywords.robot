*** Keywords ***

# Open Browser and Navigate to Base URL
Open Browser To Base URL
    [Arguments]  ${browser}=chrome
    Open Browser  ${BASE_URL}  ${browser}
    Maximize Browser Window

# Login User with Given Credentials
Login User
    [Arguments]  ${email}  ${password}
    Input Text  xpath=//input[@data-qa='login-email']  ${email}
    Input Text  xpath=//input[@data-qa='login-password']  ${password}
    Click Button  xpath=//button[@data-qa='login-button']
    Sleep  2s

# Register New User
Register New User
    [Arguments]  ${name}  ${email}  ${password}
    Input Text  xpath=//input[@data-qa='signup-name']  ${name}
    Input Text  xpath=//input[@data-qa='signup-email']  ${email}
    Click Button  xpath=//button[@data-qa='signup-button']
    Sleep  2s
    # Enter Account Information
    Input Text  xpath=//input[@data-qa='password']  ${password}
    Select Checkbox  xpath=//input[@id='newsletter']
    Select Checkbox  xpath=//input[@id='optin']
    Input Text  xpath=//input[@data-qa='first_name']  ${FIRST_NAME}
    Input Text  xpath=//input[@data-qa='last_name']  ${LAST_NAME}
    Input Text  xpath=//input[@data-qa='company']  ${COMPANY}
    Input Text  xpath=//input[@data-qa='address1']  ${ADDRESS1}
    Input Text  xpath=//input[@data-qa='address2']  ${ADDRESS2}
    Input Text  xpath=//input[@data-qa='city']  ${CITY}
    Select From List By Value  xpath=//select[@data-qa='state']  ${STATE}
    Input Text  xpath=//input[@data-qa='zipcode']  ${ZIP_CODE}
    Input Text  xpath=//input[@data-qa='mobile_number']  ${MOBILE_NUMBER}
    Click Button  xpath=//button[@data-qa='create-account']

# Verify User is Logged In
Verify User Logged In
    [Arguments]  ${user_name}
    Element Text Should Be  xpath=//div[@class='header_user_info']  Logged in as ${user_name}

# Logout User
Logout User
    Click Button  xpath=//a[@href='/logout']

# Delete User Account
Delete User Account
    Click Button  xpath=//a[@href='/delete_account']
    Sleep  2s
    Element Should Be Visible  xpath=//h2[contains(text(),'ACCOUNT DELETED!')]
    Click Button  xpath=//a[@href='/']

# Verify Error Message
Verify Error Message
    [Arguments]  ${expected_message}
    Element Text Should Be  xpath=//p[@class='text-danger']  ${expected_message}

# Close Browser
Close Browser
    Close All Browsers
