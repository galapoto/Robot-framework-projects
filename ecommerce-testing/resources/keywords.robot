*** Keywords ***
Remove Consent Popup If Present
    FOR    ${i}    IN RANGE    10
        ${overlay}=    Run Keyword And Return Status    Execute JavaScript    document.querySelector('div.fc-dialog-overlay')?.remove();
        ${popup}=      Run Keyword And Return Status    Execute JavaScript    document.querySelector('div.fc-consent-root')?.remove();
        Sleep    1s
        Exit For Loop If    '${overlay}'=='True' or '${popup}'=='True'
    END
