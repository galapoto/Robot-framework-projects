*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser
Test Setup      Open Browser To Login Page

*** Variables ***
${URL}            https://www.saucedemo.com
${BROWSER}        chrome
${LOCKED_USER}    locked_out_user
${STANDARD_PASS}  secret_sauce
${PROBLEM_USER}   problem_user

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Login With Locked Out User
    Input Text    id=user-name    ${LOCKED_USER}
    Input Text    id=password     ${STANDARD_PASS}
    Click Button  id=login-button
    Page Should Contain Element   css=h3[data-test="error"]
    Element Text Should Be    css=h3[data-test="error"]    Epic sadface: Sorry, this user has been locked out.

*** Test Cases ***
Login With Problem User
    Input Text    id=user-name    ${PROBLEM_USER}
    Input Text    id=password     ${STANDARD_PASS}
    Click Button  id=login-button
    Page Should Contain Element   xpath=//*[@id="header_container"]/div[2]/span
    ${image_alt}=    Get Element Attribute    xpath=(//img)[1]    alt
    Should Be Equal As Strings    ${image_alt}    Sauce Labs Backpack
