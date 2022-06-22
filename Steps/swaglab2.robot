*** Settings ***
Library                 SeleniumLibrary
Library                 DataDriver                      ../Resources/credentials.csv             sheet_name=Sheet1
Test Setup              Open Browser                                        ${base_url}         ${browser_type}
Test Teardown           Close Browser
Test Template           I login with valid username and valid password
Variables               ../Resources/locator.yaml

*** Variables ***
${base_url}             https://www.saucedemo.com/
${browser_type}         Chrome

*** Keywords ***
I Login with valid username and valid password
    Maximize Browser Window
    [Arguments]                                 ${username}                  ${password}
    Input Text                                  ${input_username}            ${username}
    Input Text                                  ${input_password}            ${password}
    Click Element                               ${login_button}
    Element Should Be Visible                   ${validasi_logo}

*** Test Cases ***
Login with valid username and valid password using CSV File                  ${username}     ${password}