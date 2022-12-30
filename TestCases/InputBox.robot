*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/


*** Test Cases ***
TestingInputBox  #This is the name of the Test Case
    open browser    ${url}  ${browser}
    maximize browser window
    title should be  Swag Labs  #Title should have been 'saucedemo' but was 'Swag Labs'.
    ${"email_txt"}  set variable  css:input#user-name
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    Input Text  ${"email_txt"}  standard_user
    sleep   5
    clear element text  ${"email_txt"}
    sleep   5
    #element should not be visible
    close browser
    #close window


*** Keywords ***
