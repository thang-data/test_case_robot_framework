 

*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          http://blazedemo.com/
${BROWSER}      Chrome

*** Keywords ***

Open Home Page
    Open browser    ${URL}   ${BROWSER}

Close Browsers
    Close All Browsers


Select Departure City
    [Arguments]      ${departure_city}
     Select From List By Value   xpath://select[@name='fromPort']  ${departure_city}

Select Destination City
    [Arguments]      ${destination_city}
    Select From List by Value   xpath://select[@name='toPort']    ${destination_city}

Search For Flights
    Click Button    css:input[type='submit']

There are available Flights
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty     ${flights}