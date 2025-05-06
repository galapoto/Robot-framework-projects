*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Open Website
    Open Browser    ${URL}    chrome    executable_path=${CHROMEDRIVER}
    Sleep    5s
    Close Browser
    Sleep    10s
    Close Browser
