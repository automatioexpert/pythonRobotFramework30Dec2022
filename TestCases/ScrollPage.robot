*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollPage Test
    open browser    https://www.amazon.com  chrome
    maximize browser window
    #execute javascript  window.scrollTo(0,1500)  #verticall scrolling,if we want to perform horizontal scroll pass the x axis value
    #Perform scroll to a webelement which is present at the bottom of the webpage or from where its not visible
    #scroll element into view  xpath://a[contains(text(),'Amazon Devices')]

    execute javascript  window.scrollTo(0,document.body.scrollHeight)   #reprsenting end of the webpage
    sleep  3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)   #reprsenting top of the webpage . -document.body.scrollHeight - Goes to the top of the page
    sleep  5
