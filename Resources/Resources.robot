*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  ../ExternalKeywords/Locators.py

*** Keywords ***
Read_from_Object_Repository
    [Arguments]  ${locator}
    ${value}=  read from json  ${locator}
    [Return]  ${value}