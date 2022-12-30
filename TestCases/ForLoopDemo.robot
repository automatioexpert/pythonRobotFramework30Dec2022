*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
ForLoop1
    FOR  ${i}  IN RANGE  1  10
      LOG TO CONSOLE  ${i} END
