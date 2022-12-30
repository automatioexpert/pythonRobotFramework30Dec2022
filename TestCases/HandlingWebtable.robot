*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingWebTableTest
    open browser  https://testautomationpractice.blogspot.com/   chrome
    maximize browser window
    ${header}=  get element count  xpath://table[@name='BookTable']/tbody/tr/th
    log to console  ${header}
    ${rows}=  get element count  xpath://table[@name='BookTable']/tbody/tr
    ${cols}=  get element count  xpath://table[@name='BookTable']/tbody/tr/td
    log to console  ${rows}
    log to console  ${cols}
    ${data}=  get text  //table[@name='BookTable']/tbody/tr[2]/td
    log to console  ${data}
    table column should contain  xpath://table[@name='BookTable']  2  Author
    table row should contain  xpath://table[@name='BookTable']  4  Learn JS
    table cell should contain   xpath://table[@name='BookTable']    5   2   Mukesh
    table header should contain   xpath://table[@name='BookTable']  BookName
    close browser


