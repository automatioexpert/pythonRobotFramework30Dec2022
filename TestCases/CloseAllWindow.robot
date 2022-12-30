*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    open browser  https://www.google.com    chrome
    close all browsers  #This keyword closes all the opened browsers

*** Keywords ***


