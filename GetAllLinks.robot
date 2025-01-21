*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
GetAllLinksTC
    open browser    https://stackoverflow.com/  chrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console      ${AllLinksCount}

    @{ItemLinks}    create list

        FOR    ${i}    IN RANGE     1    ${AllLinksCount}+1
            ${LinkText}=    get text    xpath:(//a)[${i}]
            log to console   ${LinkText}
        END