*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${NAV_PANEL}                    id:bb-header-spacing
${NAV_PANEL_LOGO}               css:.d-flex.align-items-center.flex-wrap.flex-sm-nowrap
${NAV_PANEL_HOME_BUTTON}        xpath:(//*[@role="menuitem"])[1]
${NAV_PANEL_ABOUT_BUTTON}       xpath:(//*[@role='menuitem'])[2]
${NAV_PANEL_SHOP_BUTTON}        xpath:(//*[@role="menuitem"])[3]
${NAV_PANEL_FAQ_BUTTON}         xpath:(//*[@role="menuitem"])[4]
${NAV_PANEL_CONTACT_BUTTON}     xpath:(//*[@role="menuitem"])[5]
${NAV_PANEL_CART_ICON}          xpath://*[@aria-label="Open Cart"]


*** Keywords ***
Navigate To Home Page
    Click Element    ${NAV_PANEL_HOME_BUTTON}

Navigate To About Page
    Click Element    ${NAV_PANEL_ABOUT_BUTTON}

Navigate To Shop Page
    Click Element    ${NAV_PANEL_SHOP_BUTTON}

Navigate To Faq Page
    Click Element    ${NAV_PANEL_FAQ_BUTTON}

Navigate To Contact Page
    Click Element    ${NAV_PANEL_CONTACT_BUTTON}

Click On Shop Now Button
    Click Button    SHOP NOW

Open Cart
    Click Element    ${NAV_PANEL_CART_ICON}

Click On Site Logo
    Click Element    ${NAV_PANEL_LOGO}
