*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    set selenium speed  3 seconds
    Click Element   css:a[href*='dropdown']

    #select dropdown value  by using the index- index- It is the name that appears in the list
    select from list by index   dropdown    1
    sleep  2  # For waiting the script execution
    select from list by index   dropdown    2
    sleep  8
    close browser

*** Keywords ***


