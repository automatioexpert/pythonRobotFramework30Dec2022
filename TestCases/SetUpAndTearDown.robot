*** Settings ***
Suite Setup  log to console   Opening Browser
Suite Teardown  log to console  Closing Browser

Test Setup  log to console  Login to application
Test Teardown  log to console  Logout to application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console  This is prepaid recharge
TC2 Postpaid Recharge
    log to console  This is postpaid recharge
TC3 Seach
    log to console  This is search test case

TC4 Advanced Recharge
    log to console  This is advanced search test case



