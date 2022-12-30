*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${pageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  ${pageTitle}   #log to console will display the title to the local pycharm terminal
    log  ${pageTitle}   #log keyword will add the title to the html report
    input Text  css:input#user-name  standard_user
    input Text  css:input#password  secret_sauce
    click element  css:input#login-button




