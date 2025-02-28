*** Settings ***
Documentation    Keywords for About page
Library          SeleniumLibrary
Variables        ../TestData/TestData.py


*** Variables ***
${ABOUT_US_BANNER}          id:bb-section-5129237E-F62C-D51F-8FF0-2BFF121EE5F7
${ABOUT_US_BANNER_TEXT}     ABOUT US\nLearn more about what we do
${ABOUT_PAGE}               ${DOMAIN}/about


*** Keywords ***
Open About Page
    [Documentation]    Navigates directly to About page
    Go To    ${ABOUT_PAGE}

Verify About Page Is Opened
    [Documentation]    Asserts About page is opened by locating elements (title, About Us banner)
    Wait Until Location Is    ${ABOUT_PAGE}
    Title Should Be    ABOUT | ${TITLE}
    Page Should Contain Element    ${ABOUT_US_BANNER}
    Element Text Should Be    ${ABOUT_US_BANNER}    ${ABOUT_US_BANNER_TEXT}
