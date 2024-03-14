*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# URLs
${HOMEPAGE_URL}    https://www.saucedemo.com/
${INVENTORY_PAGE_URL}    https://www.saucedemo.com/inventory.html

# Locators
${USERNAME_INPUT}    //input[@id='user-name']
${PASSWORD_INPUT}    //input[@id='password']
${LOGIN_BUTTON}    //input[@id='login-button']
${HAMBURGER_MENU}    //button[@id='react-burger-menu-btn']
${LOGOUT}    //a[@id='logout_sidebar_link']

# Other Variables
${BROWSER}    Chrome
${USERNAME_STANDARD}    standard_user
${PASSWORD}    secret_sauce
${ERROR_MESSAGE_USERNAME}    Epic sadface: Username is required
${ERROR_MESSAGE_PASSWORD}    Epic sadface: Password is required

*** Keywords ***
Test Setup
    Open Browser    ${HOMEPAGE_URL}    ${BROWSER}
    Maximize Browser Window

Test Teardown
    Close All Browsers

Login Standard User
    Input Text    ${USERNAME_INPUT}    ${USERNAME_STANDARD}
    Input Password    ${PASSWORD_INPUT}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Logout User
    Click Element    ${HAMBURGER_MENU}
    Click Element    ${LOGOUT}
    