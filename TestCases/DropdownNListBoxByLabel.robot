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

    #select dropdown value  by using the label- Label- It is the name that appears in the list
    select from list by label   dropdown    Option 2
    sleep  2
    select from list by label   dropdown    Option 1
    sleep  8
    close browser

*** Keywords ***


