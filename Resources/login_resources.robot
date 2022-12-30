*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://www.saucedemo.com/
${BROWSER}  chrome

*** Keywords ***
Open My Browser
    open browser  ${LOGIN_URL}  ${BROWSER}
    maximize browser window

close browsers
    close all browsers

Open Login Page
    go to   ${LOGIN_URL}

Input username
    [Arguments]   ${username}
    Input Text  css:input#username  ${username}

Input password
    [Arguments]   ${password}
    Input Text  css:input#password  ${password}

Click Login Button
   click element  css:input[value='Login']

Perform Logout
    click element  css:button#react-burger-menu-btn
    click element  css:logout_sidebar_link

Error message should be visible
    #page should contain

