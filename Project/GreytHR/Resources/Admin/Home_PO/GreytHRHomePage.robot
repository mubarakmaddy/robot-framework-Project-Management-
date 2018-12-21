*** Settings ***
Library  Selenium2Library
*** Variables ***

${GHR_Home_Page_Title} =  xpath=//a[@href="#feeds"]

*** Keywords ***
Verify Home page is loaded
    wait until page contains element    ${GHR_HomePageTitle}    10sec
    element should be visible           ${GHR_HomePageTitle}
