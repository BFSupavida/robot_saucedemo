*** Settings ***
Library    SeleniumLibrary
Library     load_env.py
Resource   ../variables/common.robot

*** Keywords ***
Open Browser To Base
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Login With Valid Credential
    ${username}=    Get Env    USERNAME
    ${password}=    Get Env    PASSWORD
    Input Text    id:user-name    ${username}
    Input Text    id:password     ${password}
    Click Button  id:login-button

Verify Login Success
    Page Should Contain    Products

Login With Invalid Credential
    Input Text    id:user-name    invalid_user
    Input Text    id:password     wrong_password
    Click Button  id:login-button

Verify Login Failed
    Page Should Contain    Epic sadface

Logout
    Click Button    id:react-burger-menu-btn
    Wait Until Element Is Enabled       id:logout_sidebar_link    5s
    Click Element    id:logout_sidebar_link
