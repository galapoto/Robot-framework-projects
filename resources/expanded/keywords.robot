*** Keywords ***
Open Validation Form
    Open Browser    about:blank    chrome
    Maximize Browser Window

Click Register Button
    Scroll Element Into View    xpath=//*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Click Element               xpath=//*[@id="core"]/div/div/div/div/div/form/div[5]/button

Set Pickup Date
    [Arguments]    ${date}
    Input Text     name=pickupdate    ${date}