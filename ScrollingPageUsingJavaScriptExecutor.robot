*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}      https://www.worldometers.info/geography/flags-of-the-world/
${browser}     chrome

*** Test Cases ***
ScrollingTest
    open browser      ${url}   ${browser}
    maximize browser window
    sleep  2
    execute javascript  window.scrollTo(0,5000)
    sleep    3

    #Scroll to Specific Element
    scroll element into view    xpath://body/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[79]/div[1]/a[1]/img[1]
    sleep    3

    #Scroll till bottom
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   3

    #Scroll back to top
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    sleep   3