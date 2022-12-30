*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    Click Element   css:a[href*='checkbox']
    #select radio button  xpath://*[contains(text(),'Single')]     Single

    #Click on the CheckBox
    Click Element   xpath://input[@type='checkbox'][1]
    sleep   3
    Click Element   xpath://input[@type='checkbox'][2]
    sleep  8
    close browser

*** Keywords ***


