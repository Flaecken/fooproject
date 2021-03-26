*** Settings ***
Documentation               Suite description
Library                     SeleniumLibrary
Resource                    ../Resources/keywords.robot
Suite Setup                 Begin web test
Suite Teardown              End web test

*** Variables ***
${BROWSER}                  chrome
${URL}                      http://rental11.infotiv.net/

*** Test Cases ***
User can access car rental website
    [Documentation]         Infotiv Car Rental Access
    [Tags]                  Test 1
    Go to web page

User can insert date for rental
    [Documentation]         Infotiv Car Rental Dates Function
    [Tags]                  Test 2
    Go to web page
    Search for car

User can search for specific car
    [Documentation]         Select specific car model and number of passengers
    [Tags]                  Test 3
    Go to web page
    Search for car
    Specify car search


#User can access project GitHub-page
#    [Documentation]         Infotiv documentation path to GitHub test
#    [Tags]                  Test 4
#    Go to web page
#    Access about page

