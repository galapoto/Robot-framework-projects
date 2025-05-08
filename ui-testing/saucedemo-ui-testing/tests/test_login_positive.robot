*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers
Test Teardown     Capture Page Screenshot

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://www.saucedemo.com/
${BROWSER}         chrome
${CHROMEDRIVER}    C:/chrome_driver/chromedriver-win64/chromedriver.exe
${USERNAME}        standard_user
${PASSWORD}        secret_sauce

*** Test Cases ***
Add Product To Cart On SauceDemo
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button