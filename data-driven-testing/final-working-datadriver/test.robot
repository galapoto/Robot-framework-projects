*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=login_data.csv
Test Template    Run Login Test
Suite Setup    Open Browser To SauceDemo
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.saucedemo.com

*** Test Cases ***
Login With Multiple Users

*** Keywords ***
Open Browser To SauceDemo
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Run Login Test
    [Arguments]    ${username}    ${password}    ${expected_result}
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    ${success}=    Run Keyword And Return Status    Page Should Contain Element    css=.inventory_list
    Run Keyword If    '${expected_result}' == 'Pass'    Should Be True    ${success}
    Run Keyword If    '${expected_result}' == 'Fail'    Should Be False    ${success}
