*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser        ${base_url}         ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://www.saucedemo.com/
${browser_type}         Chrome

*** Test Cases ***
I Login with valid username and valid password
    Maximize Browser Window
    Input Text                                  //input[@id="user-name"]            standard_user
    Input Text                                  //input[@id="password"]             secret_sauce
    Click Element                               //input[@id="login-button"]