*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    Input text  css:input#user-name  standard_user
    input text  css:input#password  secret_sauce
    capture element screenshot  css:input#login-button  C:\\Users\\valmiki\\PycharmProjects\\PythonSelenium\\pythonRobotFramework30Dec2022\\loginButton.png
    click element  css:input#login-button
    capture page screenshot  C:\\Users\\valmiki\\PycharmProjects\\PythonSelenium\\pythonRobotFramework30Dec2022\\FullPageScreenshot.png
    close all browsers

*** Keywords ***


