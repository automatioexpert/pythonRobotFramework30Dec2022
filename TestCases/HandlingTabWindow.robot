*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/windows


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    click element  css:a[href*='window']
    switch window    New Window
    ${windowTxt}=    Get Text  xpath://h3[contains(text(),'New Window')]
    log to console  ${windowTxt}  #returns New Window
    sleep  8
    close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


