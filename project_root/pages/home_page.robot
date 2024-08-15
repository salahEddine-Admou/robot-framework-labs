*** Settings ***
Resource  ../resources/common_keywords.robot

*** Variables ***
${HOME_PAGE_URL}    ${BASE_URL}

*** Keywords ***
Verify Home Page
    Open Browser To Base URL 
    Title Should Be  Home
    Close Browser
