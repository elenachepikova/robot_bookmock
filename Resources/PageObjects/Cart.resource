*** Settings ***
Library         SeleniumLibrary
Variables       ../TestData/TestData.py


*** Variables ***
${CART}                 css:.bb-cart.show
${CART_TITLE}           css:.mb-0.bb-font-h5
${CART_CLOSE_ICON}      xpath://*[@aria-label="Close Sidebar"]


*** Keywords ***
Verify Empty Cart Is Opened
    Wait Until Page Contains Element    ${CART}
    Page Should Contain Element    ${CART_TITLE}
    Page Should Contain Element    ${CART_CLOSE_ICON}
