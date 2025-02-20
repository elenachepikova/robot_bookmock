*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py

*** Variables ***
${AboutUsBanner}        id:bb-section-5129237E-F62C-D51F-8FF0-2BFF121EE5F7
${ContactUsButton}      xpath://button[contains(text(),'CONTACT US')]
${ShopNowButton}        css:button.btn-secondary
${WelcomeSection}       id:bb-section-5129237F-D43A-8412-5DD5-6C3DF38BD7AE
${OurMissionSection}    id:bb-section-51292380-E3AF-AFFB-A3B9-46FBDB6E6D1F
${OurVisionSection}     id:bb-section-51292381-DA48-BCB9-9163-D3E6ED65874B
${Gallery}              id:bb-section-51292382-DFB4-576E-4DE7-7EB42AD3A4F6
${Picture}              css:.gallery-media-wrapper


*** Keywords ***
Open About page
    Open Browser                ${Domain}       ${Browser}
    Maximize Browser Window

Verify ABOUT page is opened
    Wait Until Location Is              ${Domain}/about
    Title Should Be                     ABOUT | ${Title}
    Page Should Contain Element         ${AboutUsBanner}
    Element Text Should Be              ${AboutUsBanner}  ${AboutUsBannerText}
