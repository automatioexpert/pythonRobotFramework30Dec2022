*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    ${time}=    get selenium timeout  #Default selenium timeout is 5 secs
    log to console  ${time}
    set selenium timeout    10 seconds  #Max time script should wait
    wait until page contains  The Internet  #Text 'The Internet2' did not appear in 10 seconds.
    Click Element   css:a[href*='dropdown']

    #select dropdown value  by using the index- index- It is the name that appears in the list
    select from list by index   dropdown    1
    sleep  2
    select from list by index   dropdown    2
    sleep  8
    close browser

*** Keywords ***


