
*** Settings ***
Resource  Search_flights_keywords.robot
Suite Setup Open Home Page
Suite Teardown Close Browser

*** Test Cases ***
The user can search for flights
    [Tags]  search_flights
    Select Departure City  Paris
    Select Destination City  London
    Search For Flights
    There are available Flights
