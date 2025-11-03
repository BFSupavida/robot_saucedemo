*** Settings ***
Resource    ../../resources/keywords/login_keywords.resource
Variables   ../../resources/variables/common.robot
Suite Setup     Open Browser To Base
Suite Teardown  Close All Browsers
Test Tags       ui  smoke  login

*** Test Cases ***
Login Successfully
    Login With Valid Credential
    Page Should Contain    Swag Labs
    [Teardown]    Logout

Login With Invalid Credential
    Login With Invalid Credential
    Page Should Contain    Username and password do not match any user in this service


