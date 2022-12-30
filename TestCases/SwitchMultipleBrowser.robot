*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/windows


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    sleep  8

    #Second browser window
    open browser    https://www.google.com  chrome
    maximize browser window

    switch browser  1
    ${title}    get title
    log to console   ${title}

    switch browser  2
    ${title2}    get title
    log to console   ${title2}

    sleep  4
    close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


