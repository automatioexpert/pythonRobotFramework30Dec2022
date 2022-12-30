*** Settings ***

Library   SeleniumLibrary

*** Test Cases ***
Get All links Test
    open browser    https://www.amazon.com
    maximize browser window
    ${AllLinkCount}=  get element count  xpath://a
    log to console  ${AllLinkCount}

    #Get All links Test                                                    ...432