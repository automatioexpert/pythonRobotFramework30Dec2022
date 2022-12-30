*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/

#Implicit wait is global wait and once it is defined its applicable to all the selenium scripts
#If any webelement is not immediately found then selenium script will wait until the implicit
#wait defined and if still the web element is not found the error is thrown
"""
Implicit wait is a GLOBAL WAIT and applicable to WebElement across the framework
Selenium implicit wait default wait time is 0 secs and gets updated to whatever value
we define using the implicit wait
"""
*** Test Cases ***
Testing Radio Button and checkboxes
    open browser  ${url}   ${browser}
    maximize browser window
    set selenium implicit wait  10 seconds
    wait until page contains  The Internet  #Text 'The Internet2' did not appear in 10 seconds.
    Click Element   css:a[href*='dropdown']

    #select dropdown value  by using the index- index- It is the name that appears in the list
    select from list by index   dropdown    1
    sleep  2
    select from list by index   dropdown    2
    sleep  8
    close browser

*** Keywords ***


