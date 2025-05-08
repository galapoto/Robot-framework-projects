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
    Input Text    id=password_Wrong     ${PASSWORD}
    Click Button  id=login-button
    Wait Until Element Is Visible    xpath=//div[text()='Sauce Labs Backpack']    10s
    Click Element    xpath=//div[text()='Sauce Labs Backpack']
    Wait Until Element Is Visible    id=add-to-cart-sauce-labs-backpack    10s
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Element    id=shopping_cart_container
    Wait Until Page Contains    Sauce Labs Backpack
    Sleep    2s
    Close Browser
    