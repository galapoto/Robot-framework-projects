*** Keywords ***
Open Form Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Select Payment Method
    [Arguments]    ${method}
    Select From List By Label    name=payment    ${method}