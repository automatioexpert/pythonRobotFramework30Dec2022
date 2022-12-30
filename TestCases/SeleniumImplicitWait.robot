*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/


*** Test Cases ***
RegistrationTest
    open browser  ${url}   ${browser}
    maximize browser window
    #set selenium timeout    10 seconds  #Max time script should wait
    wait until page contains  The Internet  #Text 'The Internet2' did not appear in 10 seconds.
    Click Element   css:a[href*='dropdown']    #Element with locator 'css:a[href*='dropdown1']' not found ,Immediately error is thrown in this case if no wait is provided and script fails and get terminated


    #select dropdown value  by using the index- index- It is the name that appears in the list
    select from list by index   dropdown    1
    sleep  2
    select from list by index   dropdown    2
    sleep  8
    close browser

*** Keywords ***


