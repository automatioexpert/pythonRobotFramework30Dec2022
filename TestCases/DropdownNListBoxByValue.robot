*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    Click Element   css:a[href*='dropdown']

    #select dropdown value  by using the value
    select from list by value   dropdown    1
    sleep  2
    select from list by value   dropdown    2
    sleep  8
    close browser

*** Keywords ***


