*** Settings ***
Documentation    Navigation panel suite
Resource         ../Resources/PageObjects/HomePage.robot
Resource         ../Resources/PageObjects/AboutPage.robot
Resource         ../Resources/PageObjects/ShopPage.robot
Resource         ../Resources/PageObjects/NavigationPanelElement.robot
Resource         ../Resources/PageObjects/Cart.robot
Resource         ../Resources/Common.robot
Test Setup       Start Test
Test Teardown    End Test


*** Test Cases ***
Open ABOUT page via navigation panel
    [Tags]          smoke
    Open HOME page
    Navigate To ABOUT Page
    Verify ABOUT page is opened

Open SHOP page via navigation panel
    [Tags]          smoke
    Open HOME page
    Navigate To SHOP Page
    Verify SHOP page is opened

Open HOME page via navigation panel
    [Tags]          smoke
    Open ABOUT Page
    Navigate To HOME Page
    Verify HOME page is opened

Click on site logo redirects to HOME page
    [Tags]          regression
    Open ABOUT Page
    Click on site logo
    Verify HOME page is opened

Click on SHOP NOW button to open SHOP page
    [Tags]          regression
    Open HOME page
    Click on SHOP NOW button
    Verify SHOP page is opened

CART icon opens Cart sidebar
    [Tags]          regression
    Open HOME page
    Open Cart
    Verify empty Cart is opened
