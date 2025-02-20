*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py


*** Variables ***
${HomeBanner}               id:bb-section-512921E4-B305-83EC-0A36-1A624B3CBBFA
${FeaturedSection}          id:bb-section-512921E5-B3EE-81BE-E747-F1A82516138D
${FeaturedSectionTitle}     xpath://*[@class="bb-font-h2"]
${RecentReviewsSection}     id:bb-section-512921E6-02B3-DB71-72CB-05545E668750
${RecentReviewsTitle}       xpath://*[@class=" bb-font-h3"]
${Reviews}                  css:.col-12.col-md-6
${SearchAndFilterButton}    css:.d-block


*** Keywords ***
Open Homepage
    Open Browser                ${Domain}       ${Browser}
    Maximize Browser Window
