*** Settings ***
Library         SeleniumLibrary
Variables       ../TestData/TestData.py


*** Variables ***
${HOME_BANNER}          id:bb-section-512921E4-B305-83EC-0A36-1A624B3CBBFA
${HOME_BANNER_TITLE}    xpath://*[@class=" bb-font-h2"]


*** Keywords ***
Open Home Page
    Go To    ${DOMAIN}

Verify Home Page Is Opened
    Wait Until Location Is    ${DOMAIN}/
    Title Should Be    ${TITLE}
    Page Should Contain Element    ${HOME_BANNER}
    Element Text Should Be    ${HOME_BANNER_TITLE}    Welcome to BookMock!
