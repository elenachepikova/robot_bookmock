*** Settings ***
Library  SeleniumLibrary
Variables  TestData/TestData.py

*** Variables ***
${Cart}                      css:.bb-cart.show
${CartTitle}                 css:.mb-0.bb-font-h5
${CloseIcon}                 xpath://*[@aria-label="Close Sidebar"]

*** Keywords ***
Verify empty Cart is opened
    wait until page contains element    ${Cart}
    Page Should Contain Element         ${CartTitle}
    Page Should Contain Element         ${CloseIcon}