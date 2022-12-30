*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/windows


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    ${location}=    get location
    log to console  ${location}
    go to   https://www.google.com
    ${location2}=    get location
    log to console  ${location2}

    go back
    ${location3}=    get location
    log to console  ${location3}
    close all browsers

*** Keywords ***


