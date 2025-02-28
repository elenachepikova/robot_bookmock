*** Settings ***
Library         SeleniumLibrary
Variables       TestData/TestData.py


*** Keywords ***
Start Test
    Open Browser    about:blank    ${Browser}
    Maximize Browser Window

End Test
    Close Browser
