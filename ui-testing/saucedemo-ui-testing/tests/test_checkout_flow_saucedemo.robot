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
Complete Checkout Flow On SauceDemo
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window

    # Login
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button

    # Add product to cart
    Wait Until Element Is Visible    id=add-to-cart-sauce-labs-backpack    10s
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Element    xpath=//*[@id="shopping_cart_container"]/a
    # Checkout process
    Wait Until Element Is Visible    id=checkout    10s
    Click Button    id=checkout
    Wait Until Element Is Visible    id=first-name    10s
    Input Text    id=first-name    John
    Input Text    id=last-name     Doe
    Input Text    id=postal-code   12345
    Click Button   id=continue
    Wait Until Page Contains Element    id=finish    10s
    Click Button    id=finish
    Wait Until Page Contains    Thank you for your order!

    Sleep    2s
    Close Browser
