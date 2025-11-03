*** Settings ***
Resource    ../../resources/keywords/login_keywords.resource
Resource    ../../resources/keywords/card_keywords.resource
Variables   ../../resources/variables/common.robot
Suite Setup     Open Browser To Base
Suite Teardown  Close All Browsers
Test Tags       ui  smoke  login

*** Test Cases ***
Order 1 item
    Login With Valid Credential
    Add 1 item sauce labs backpack
    Page Should Contain    Remove
    Checkout item sauce labs backpack
    Page Should Contain    Thank you for your order!

    


    
