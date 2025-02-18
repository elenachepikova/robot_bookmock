*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/locators.py
Variables  ../test_data/test_data.py

*** Keywords ***
Open Homepage
    Open Browser  ${Domain}  ${Browser}
    Maximize Browser Window
