*** Settings ***
Resource  ../resources/common_keywords.robot
Resource  ../pages/contact_us_page.robot

*** Test Cases ***
Submit Contact Us Form
    [Documentation]  Test Case 6: Contact Us Form
    Open Browser To Base URL
    Go To Contact Us Page
    Verify Contact Us Page
    Input Text  xpath=//input[@data-qa='name']  ${CONTACT_NAME}
    Input Text  xpath=//input[@data-qa='email']  ${CONTACT_EMAIL}
    Input Text  xpath=//input[@data-qa='subject']  ${CONTACT_SUBJECT}
    Input Text  xpath=//textarea[@data-qa='message']  ${CONTACT_MESSAGE}
    Click Button  xpath=//button[@data-qa='submit-button']
    Close Browser
