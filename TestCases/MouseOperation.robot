*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/context_menu


*** Test Cases ***
MouseOperations
    open browser  ${url}   ${browser}
    maximize browser window
    open context menu   css:div#hot-spot    #Peforms right click operation on the provided webelement
    sleep  10
    close all browsers

*** Keywords ***


