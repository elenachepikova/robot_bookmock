*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/locators.py
Variables  ../test_data/test_data.py

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
    Click Button    ${NavigationPanelShopNowButton}     
    
Open Cart
    Click Element    ${NavigationPanelCartIcon}

Click on site logo
    Click Element    ${NavigationPanelLogo}