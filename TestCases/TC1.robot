*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    #create webdriver  chrome    executable_path="../Driver/chromedriver.exe"
    open browser    https://www.saucedemo.com  chrome
    maximize browser window
    Input Text  css:input#user-name  standard_user
    Input Text  css:input#password  secret_sauce
    Click button  name:login-button
    Log  Get Title
    close window

*** Keywords ***
