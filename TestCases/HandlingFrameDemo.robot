*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    select frame  frame-left
    ${number}=    Get Text  xpath://body[contains(text(),'LEFT')]
    log to console  ${number}
    close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


