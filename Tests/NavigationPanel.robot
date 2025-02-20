*** Settings ***
Documentation    Navigation panel suite
Library          SeleniumLibrary
Resource         ../Resources/PageObjects/HomePage.robot
Resource         ../Resources/PageObjects/AboutPage.robot
Resource         ../Resources/PageObjects/ShopPage.robot
Resource         ../Resources/NavigationPanelElement.robot
Resource         ../Resources/Cart.robot

*** Test Cases ***
Open ABOUT page via navigation panel
    [Tags]          smoke
    Open Home page
    Navigate To ABOUT Page
    Verify ABOUT page is opened
    Close Browser

Open SHOP page via navigation panel
    [Tags]          smoke
    Open Home page
    Navigate To SHOP Page
    Verify SHOP page is opened
    Close Browser

Open HOME page via navigation panel
    [Tags]          smoke
    Open About Page
    Navigate To HOME Page
    Verify HOME page is opened
    Close Browser

Click on site logo redirects to HOME page
    [Tags]          regression
    Open About Page
    Click on site logo
    Verify HOME page is opened
    Close Browser

Click on SHOP NOW button to open SHOP page
    [Tags]          regression
    Open Home page
    Click on SHOP NOW button
    Verify SHOP page is opened
    Close Browser

CART icon opens Cart sidebar
    [Tags]          regression
    Open Home page
    Open Cart
    Verify empty Cart is opened
    Close Browser