*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1
Resource  ../Resources/login_resources.robot

Suite Setup  open my browser
Suite Teardown


*** Test Cases ***
Right user empty pwd stand_user  ${EMPTY}


*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    Click Login Button



