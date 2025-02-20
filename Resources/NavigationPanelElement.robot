*** Settings ***
Library  SeleniumLibrary
Variables  TestData/TestData.py

*** Variables ***
${NavigationPanel}                  id:bb-header-spacing
${NavigationPanelLogo}              css:.d-flex.align-items-center.flex-wrap.flex-sm-nowrap
${NavigationPanelHomeButton}        xpath:(//*[@role="menuitem"])[1]
${NavigationPanelAboutButton}       xpath:(//*[@role='menuitem'])[2]
${NavigationPanelShopButton}        xpath:(//*[@role="menuitem"])[3]
${NavigationPanelFAQButton}         xpath:(//*[@role="menuitem"])[4]
${NavigationPanelContactButton}     xpath:(//*[@role="menuitem"])[5]
${NavigationPanelCartIcon}          xpath://*[@aria-label="Open Cart"]


*** Keywords ***
Navigate to HOME page
    Click Element    ${NavigationPanelHomeButton}

Navigate to ABOUT page
    Click Element    ${NavigationPanelAboutButton}

Navigate to SHOP page
    Click Element    ${NavigationPanelShopButton}    
    
Navigate to FAQ page
    Click Element    ${NavigationPanelFAQButton} 
    
Navigate to CONTACT page
    Click Element    ${NavigationPanelContactButton}   
    
Click on SHOP NOW button
    Click Button    SHOP NOW
    
Open Cart
    Click Element    ${NavigationPanelCartIcon}

Click on site logo
    Click Element    ${NavigationPanelLogo}