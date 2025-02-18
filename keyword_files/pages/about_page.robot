*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/locators.py
Variables  ../test_data/test_data.py

*** Keywords ***
Verify ABOUT page is opened
    Wait Until Location Is    ${Domain}/about
    Title Should Be    ABOUT | ${Title}
    Page Should Contain Element    ${AboutUsBanner}
    Element Text Should Be    ${AboutUsBanner}  ${AboutUsBannerText}
