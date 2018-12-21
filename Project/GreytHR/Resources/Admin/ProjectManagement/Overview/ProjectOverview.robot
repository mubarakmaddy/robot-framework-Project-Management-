*** Settings ***
Library   Selenium2Library
*** Variables ***
${Project_Overview_Header} =                          xpath=//h2[text()='Overview']
${Project_Overview_Create_Project_Button} =           xpath=//button[contains(text(),'Create project')]
${Project_Overview_Delete_Project_icon} =             xpath=//i[@title='Delete Project']
${Project_Overview_Edit_Project_icon} =               xpath=//i[@title='Edit Project']
${Project_Overview_Project_Delete_Success_Message} =  xpath=//div[@class='alert alert-success'][contains(text(),'deleted successfully')]
${Project_Overview_Project_Delete_Failure_Message} =  xpath=//div[@class='alert alert-danger'][contains(text(),'Unable to delete')]
${Project_Overview_Project_Delete_Confirm_Button} =   xpath=//div[@class='delete-button']/button[@class='btn accept']
${Project_Overview_Project_Search Field} =            xpath=//input[@class='form-control']

*** Keywords ***

Verify Project Overview page is loaded
    wait until page contains element    ${Project_Overview_Header}  2s
    element should be visible  ${Project_Overview_Header}

Click on Create Project Button
    click element   ${Project_Overview_Create_Project_Button}

Search For a Project
    [Arguments]  ${Project_Name}
    input text  ${project_overview_project_search   ${Project_Name}

Select a Project From List
    [Arguments]  ${Project_Name}
    input text  ${Project_Overview_Project_Search Field}    ${Project_Name}
    click element   xpath=//div[@class='col-lg-10 col-md-10 col-sm-10 project-col-def']/div[@title='${Project_Name}']
    element should be visible  xpath=(//div[@class='project-header']/div[@title='${Project_Name}'])[1]

Click on Delete Project icon
    wait until page contains element    ${project_overview_delete_project_icon}  10s
    click element  ${project_overview_delete_project_icon}

Click On Delete Project Confirm Button
    wait until page contains element    ${project_overview_project_delete_confirm_button}  10s
    click button  ${project_overview_project_delete_confirm_button}

Verify Project Delete Success Message is displayed
    wait until page contains element    ${project_overview_project_delete_success_message}  10s
    element should be visible  ${project_overview_project_delete_success_message}

Verify Project Delete Failure Message is displayed
    wait until page contains element    ${project_overview_project_delete_failure_message}  10s
    element should be visible  ${project_overview_project_delete_failure_message}

Click on Edit Project icon
    wait until page contains element    ${Project_Overview_Edit_Project_icon}  10s
    click element  ${Project_Overview_Edit_Project_icon}
