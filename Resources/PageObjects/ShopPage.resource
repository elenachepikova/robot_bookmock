*** Settings ***
Library         SeleniumLibrary
Variables       ../TestData/TestData.py


*** Variables ***
${ALL_PRODUCTS_TITLE}       css:h2.bb-font-h2
${SHOP_PAGE}                ${DOMAIN}/shop


*** Keywords ***
Open Shop Page
    Go To    ${SHOP_PAGE}

Verify Shop Page Is Opened
    Wait Until Location Is    ${SHOP_PAGE}
    Title Should Be    SHOP | ${TITLE}
    Page Should Contain Element    ${ALL_PRODUCTS_TITLE}
    Element Text Should Be    ${ALL_PRODUCTS_TITLE}    All Products
