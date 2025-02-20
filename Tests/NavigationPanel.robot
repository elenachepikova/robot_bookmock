*** Settings ***
Documentation    Navigating through BookMock pages
Library          SeleniumLibrary
Resource         ../Resources/PageObjects/HomePage.robot
Resource         ../Resources/PageObjects/AboutPage.robot
Resource         ../Resources/PageObjects/ShopPage.robot
Resource         ../Resources/NavigationPanelElement.robot

*** Test Cases ***
Open ABOUT page via navigation panel
    Open Homepage
    Navigate To ABOUT Page
    Verify ABOUT page is opened
    Close Browser

Click on SHOP NOW button opens SHOP page
    Open Homepage
    Click on SHOP NOW button
    Verify SHOP page is opened
    Close Browser