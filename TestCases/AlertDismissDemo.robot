*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    click element  xpath://button[contains(text(),'JS Confirm')]    #Opens alert
    #handle alert    dismiss     #Clicks on Accept button on alert
    #handle alert    cancel     #Clicks on Cancel button on alert
    #handle alert    leave   #leave keyword leaves the already opened alert
    #alert should be present  I am a JS Confirm  #this keyword identifies the alert and closes the alert
    alert should not be present  I am a JS Confirm  #           | FAIL |ValueError: Invalid alert action 'I AM A JS CONFIRM'.

    sleep  8
    #close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


