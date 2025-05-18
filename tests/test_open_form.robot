*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/techlistic/variables.robot
Resource    ../resources/techlistic/keywords.robot

Suite Setup       Open Browser To Practice Form
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Open Selenium Practice Form
    Go To    ${URL}
    Page Should Contain Element    name=firstname
    Page Should Contain Element    name=lastname
    Page Should Contain Element    id=sex-0
    Page Should Contain Element    id=exp-0

*** Keywords ***
Open Browser To Practice Form
    Open Browser    about:blank    chrome
    Maximize Browser Window