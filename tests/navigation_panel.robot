*** Settings ***
Documentation    Navigating through BookMock pages
Library          SeleniumLibrary
Resource         ../keyword_files/pages/home_page.robot
Resource         ../keyword_files/pages/about_page.robot
Resource         ../keyword_files/elements/navigation_panel.robot

*** Test Cases ***
Open ABOUT page via navigation panel
    Open Homepage
    Navigate To ABOUT Page
    Verify ABOUT page is opened
    Close Browser