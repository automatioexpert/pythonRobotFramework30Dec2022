*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com

*** Test Cases ***
LoginTest
    #create webdriver  chrome    executable_path="../Driver/chromedriver.exe"
    open browser    ${url}  ${browser}
    maximize browser window
    loginToApplication
    Log  Get Title
    close window

*** Keywords ***
loginToApplication
    Input Text  css:input#user-name  standard_user
    Input Text  css:input#password  secret_sauce
    Click button  name:login-button