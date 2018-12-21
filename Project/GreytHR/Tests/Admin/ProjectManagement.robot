*** Settings ***
Documentation  Project Managemnt Automation is starting...
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Admin/PMAdminApp.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test

#pybot -d Results Project/GreytHR/Tests/Admin/ProjectManagement.robot


*** Test Cases ***
#
#User must be able to navigate to Project Overview Page
#    [Tags]  ${Smoke}
#    Login To GreytHR Application
#    Navigate to Project Overview page

User must be able to create the project
    [Tags]  ${Functional}
    Login To GreytHR Application
    Navigate to Project Overview page
    Create Project  Project3    Project3

#User should not be able to create project with duplicate Project Name
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    Verify Duplicate Project Name
#
#User should not be able to create project with duplicate Project Code
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    Verify Duplicate Project Code
#
#User should be able to View a Project From Project List
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project    Tesla
#
#User should be able to delete project having no workdays
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project    Project1
#    Delete Project Success
#
#User should not be able to delete project having workdays
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project    Tesla
#    Delete Project Failure
#
#User should be able to Update the Proejct details
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project   Project2
#    Update Project
#
#User should not be able to update project with duplicate Project Name
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project   Project3
#    Verify Duplicate Project Name Update
#
#User should not be able to update project with duplicate Project Code
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Project Overview page
#    View Project   Project3
#    Verify Duplicate Project Code Update
#
#User must be able to navigate to Project Workdays Page
#    [Tags]  ${Smoke}
#    Login To GreytHR Application
#    Navigate to Project Workdays page
#
#User must be able to import workdays from Bulk Import
#    [Tags]  ${Functional}
#    login to greythr application
#    navigate to project workdays page
#    Bulk Imoprt Project Workdays
