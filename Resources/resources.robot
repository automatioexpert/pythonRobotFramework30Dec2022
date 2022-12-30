*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
launchBrowser  #User defined keyword with return keyword
    [Arguments]   ${appurl}  ${appbrowser}
    open browser  ${appurl}  ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]  ${title}   #returns the title of the page lauched


