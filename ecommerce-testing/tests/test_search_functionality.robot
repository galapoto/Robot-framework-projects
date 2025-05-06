*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Search For A Product
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Sleep    3s

    Remove Consent Popup If Present

    Wait Until Element Is Visible    ${PRODUCTS_BUTTON}

    Click Element    ${PRODUCTS_BUTTON}

    Remove Consent Popup If Present

    Wait Until Element Is Visible    ${SEARCH_FIELD}
    Input Text    ${SEARCH_FIELD}    tshirt

    Remove Consent Popup If Present
    Sleep    1s
    Wait Until Element Is Visible    ${SEARCH_BUTTON}    10s

    Remove Consent Popup If Present
    
    Sleep    1s
    Click Button    ${SEARCH_BUTTON}
    Remove Consent Popup If Present

    Sleep    10s
    Wait Until Page Contains    Searched Products    20s
    Sleep    10s
    Close Browser
