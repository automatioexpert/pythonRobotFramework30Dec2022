*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    click element  xpath://button[contains(text(),'Click for JS Alert')]    #Opens alert
    handle alert    accept
    sleep  8
    close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


