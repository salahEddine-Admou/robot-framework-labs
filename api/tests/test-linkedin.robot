*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${BASE_URL}    https://linkedin-jobs-scraper-api.p.rapidapi.com/jobs/trial
${API_KEY}     6fc4363381mshccc938c5300e831p1a2d4cjsnc09dc6d2a411
${API_HOST}    linkedin-jobs-scraper-api.p.rapidapi.com

*** Test Cases ***
Post Job Search Request
    ${headers}=                   Create Headers
    ${data}=                      Create Dictionary                                title=Software Engineer    location=Berlin       rows=25
    ${response}=                  POST                                             ${BASE_URL}                headers=${headers}    json=${data}
    Log                           Response Status Code: ${response.status_code}
    Log                           Response Text: ${response.text}
    Should Be Equal As Numbers    ${response.status_code}                          200
    Log                           ${response.json()}

*** Keywords ***
Create Headers
    ${headers}=    Create Dictionary    x-rapidapi-key=${API_KEY}    x-rapidapi-host=${API_HOST}    Content-Type=application/json
    RETURN         ${headers}
