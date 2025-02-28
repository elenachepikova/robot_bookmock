*** Settings ***
Library    SeleniumLibrary
Variables  TestData/TestData.py


*** Variables ***


*** Keywords ***
Start Test
    open browser            about:blank       ${Browser}
    maximize browser window

End Test
    close browser