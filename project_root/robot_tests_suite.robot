*** Settings ***
Suite Setup    Open Browser To Base URL
Suite Teardown Close Browser

*** Test Cases ***
Run All Tests
    Run Keyword And Continue On Failure    Register New User
    Run Keyword And Continue On Failure    Login With Correct Credentials
    Run Keyword And Continue On Failure    Logout User
    Run Keyword And Continue On Failure    Submit Contact Us Form
    Run Keyword And Continue On Failure    Verify All Products Page
    Run Keyword And Continue On Failure    Add Products To Cart
    Run Keyword And Continue On Failure    Place Order After Registering
    Run Keyword And Continue On Failure    Verify Scroll Up And Down
