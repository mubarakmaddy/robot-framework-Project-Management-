*** Settings ***
Library  Selenium2Library

*** Variables ***

${Project_Workdays_Title} =   xpath=//div[@class='title']
${Project_Workdays_Bulk_Import} =   xpath=//a[contains(text(),'Bulk Import')]

*** Keywords ***
Verify Project Workdays page is loaded
    wait until page contains element    ${Project_Workdays_Title}   2s
    element should be visible   ${Project_Workdays_Title}

Click on Bulk import link
    click element  ${project_workdays_bulk_import}
    sleep  3S


