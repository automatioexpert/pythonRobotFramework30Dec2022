*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://mousetester.com/


*** Test Cases ***
MouseOperations
    open browser  ${url}   ${browser}
    maximize browser window
    #open context menu   css:div#hot-spot    #Peforms right click operation on the provided webelement
    double click element  css:div#clickMe
    sleep  10
    #close all browsers
    #Drap and Drop operation
    go to  http://the-internet.herokuapp.com/drag_and_drop   #go to command will just change the url on the webpage
    maximize browser window
    drag and drop  css:div#column-a  css:div#column-b
    sleep


*** Keywords ***


