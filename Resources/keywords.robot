*** Keywords ***
Begin web test
    Open browser            about:blank     ${BROWSER}

Go to web page
    Load page
    Verify page loaded

Load page
    Go to                   ${URL}

Verify page loaded
    ${LINK_TEXT}            Get Title
    Should be equal         ${LINK_TEXT}    Infotiv Car Rental

Search for car
    Insert date
    Submit search
    Confirm date search

Insert date
    input text              id:start    value="04-06"
    input text              id:end      value="04-10"

Submit search
    press keys              xpath://*[@id="continue"]   RETURN

Confirm date search
    wait until page contains    Selected trip dates: 2021-04-06 – 2021-04-10

#Select car (Kräver login)
#    press keys              xpath://*[@id="bookQ7pass7"]    RETURN

Specify car search
    Select car model
    Select number of passengers

Select car model
    click button            xpath://*[@id="ms-list-1"]/button
    click button            xpath://*[@id="ms-opt-3"]

Select number of passengers
    click button            xpath://*[@id="ms-list-2"]/button
    click button            xpath://*[@id="ms-opt-8"]


#Access about page
#   press keys              xpath://*[@id="about"]  RETURN

#Return to homepage
#   press keys              xpath://*[@id="logo"]   RETURN

End web test
    Close browser
