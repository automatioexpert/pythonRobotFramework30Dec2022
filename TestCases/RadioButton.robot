*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.way2automation.com/way2auto_jquery/registration.php#load_box


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    select radio button  xpath://*[contains(text(),'Single')]     Single
    sleep  6
    close browser

*** Keywords ***


