*** Settings ***
Resource  ../resources/common_keywords.robot

*** Test Cases ***
Verify Scroll Up And Down
    [Documentation]  Test Case 25: Verify Scroll Up using 'Arrow' button and Scroll Down functionality
    Open Browser To Base URL
    # Scroll Up and Down Logic
    Close Browser
