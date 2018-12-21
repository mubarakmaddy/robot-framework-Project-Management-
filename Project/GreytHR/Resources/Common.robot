*** Settings ***
Library  Selenium2Library

*** Variables ***
${Smoke} =         "Smoke"
${Functional} =     "Functional"

*** Keywords ***
Begin Web Test
     open browser  about:blank  gc
     Maximize Browser Window

#
#End Web Test
#    Close Browser
