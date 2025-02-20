*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py


*** Variables ***
${AllProductsTitle}     css:h2.bb-font-h2


*** Keywords ***
Verify SHOP page is opened
    Wait Until Location Is              ${Domain}/shop
    Title Should Be                     SHOP | ${Title}
    Page Should Contain Element         ${AllProductsTitle}
    Element Text Should Be              ${AllProductsTitle}     All Products