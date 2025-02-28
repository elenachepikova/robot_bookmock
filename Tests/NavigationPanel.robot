*** Settings ***
Documentation       Navigation panel suite

Resource            ../Resources/PageObjects/HomePage.robot
Resource            ../Resources/PageObjects/AboutPage.robot
Resource            ../Resources/PageObjects/ShopPage.robot
Resource            ../Resources/PageObjects/NavigationPanelElement.robot
Resource            ../Resources/PageObjects/Cart.robot
Resource            ../Resources/Common.robot

Test Setup          Start Test
Test Teardown       End Test


*** Test Cases ***
Open About Page Via Navigation Panel
    [Tags]    smoke
    Open Home Page
    Navigate To About Page
    Verify About Page Is Opened

Open Shop Page Via Navigation Panel
    [Tags]    smoke
    Open Home Page
    Navigate To Shop Page
    Verify Shop Page Is Opened

Open Home Page Via Navigation Panel
    [Tags]    smoke
    Open About Page
    Navigate To Home Page
    Verify Home Page Is Opened

Click On Site Logo Redirects To Home page
    [Tags]    regression
    Open About Page
    Click On Site Logo
    Verify Home Page Is Opened

Click on Shop Now Button To Open Shop Page
    [Tags]    regression
    Open Home Page
    Click On Shop Now Button
    Verify Shop Page Is Opened

Cart Icon Opens Cart Sidebar
    [Tags]    regression
    Open Home Page
    Open Cart
    Verify Empty Cart Is Opened
