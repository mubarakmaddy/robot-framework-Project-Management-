*** Settings ***
Documentation  Task Managemnt Automation is starting...
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Admin/TMAdminApp.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test

#pybot -d Results Tests/Admin/TaskManagement.robot


*** Test Cases ***

#User must be able to login to GreytHR application
#    [Tags]  ${Smoke}
#    Login To GreytHR Application
#
#User must be able to navigate to Task Management
#    [Tags]  ${Smoke}
#    Login To GreytHR Application
#    Navigate to Task Management Page

User should be able to create a Task
    [Tags]  ${Functional}
    Login To GreytHR Application
    Navigate to Task Management Page
    Create a Task

#User should be able to view the created Task
#    [Tags]  ${Functional}
#    Login To GreytHR Application
#    Navigate to Task Management Page
#    Create a Task
#    View created Task
