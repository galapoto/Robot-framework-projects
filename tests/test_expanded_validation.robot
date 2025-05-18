*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Validation Form
Suite Teardown    Close Browser
Suite Teardown    Run Keyword If Test Failed    Capture Page Screenshot


Resource    ../resources/expanded/variables.robot
Resource    ../resources/expanded/keywords.robot

*** Test Cases ***
Submit Empty Form Should Trigger Validation
    Go To    ${URL}
    Click Register Button
    Page Should Contain    Please enter your Contact name.
    Page Should Contain    Please provide your Contact number.
    Page Should Contain    Please provide valid Date.
    Page Should Contain    Please select the Paymeny Method.

Submit Form With Invalid Contact Number Should Fail
    Go To    ${URL}
    Input Text    name=ContactName           John Doe
    Input Text    name=ContactName         abc123
    Select From List By Label    name=payment     card
    Set Pickup Date    2025-05-30
    Click Register Button
    Page Should Contain    Please provide your Contact number.

Submit Form With Valid Data Should Succeed
    Go To    ${URL}
    Input Text    name=ContactName           John Doe
    Input Text    name=contactnumber         012-3456789
    Select From List By Label    name=payment     cash on delivery
    Set Pickup Date    2025-05-30
    Click Register Button
    Page Should Contain    Thank you for validating your ticket