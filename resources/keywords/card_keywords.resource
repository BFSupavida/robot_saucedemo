*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/common.robot

*** Keywords ***
Add 1 item sauce labs backpack
    Click Button    id:add-to-cart-sauce-labs-backpack

Checkout item sauce labs backpack
    Click Element    xpath://*[@id="shopping_cart_container"]/a
    Page Should Contain    Sauce Labs Backpack
    Click Button    id:checkout
    Page Should Contain    Checkout: Your Information
    Input Text    id:first-name    Supavida
    Input Text    id:last-name    Itthirak
    Input Text    id:postal-code    12120
    Click Button    id:continue
    Page Should Contain    Checkout: Overview
    Click Button    id:finish







