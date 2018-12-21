*** Settings ***

Resource  ../../Resources/Admin/SignInAndSignOut_PO/LoginPage.robot
Resource  ../../Resources/Admin/Home_PO/GreytHRHomePage.robot
Resource  ../../Resources/Admin/Navigation_PO/GreytHRNavigation.robot
Resource  ../../Resources/Admin/TaskManagement_PO/TM_LandingPage.robot
Resource  ../../Resources/Admin/TaskManagement_PO/TM_CreateTaskForm.robot

*** Keywords ***

Login To GreytHR Application
    LoginPage.Load GreytHR
    LoginPage.Enter User Name
    LoginPage.Enter Password
    LoginPage.Click on Login button
    GreytHRHomePage.Verify Home page is loaded

Navigate to Task Management Page
    GreytHRNavigation.Click on unexpanded Taskmanagement menu
    GreytHRNavigation.Click on expanded Taskmanagement menu
    TM_LandingPage.Wait Untill My Task Board page is loaded
    TM_LandingPage.Verify Tasks page is loaded

Create a Task
    Wait Untill Create Task button is loaded
    TM_LandingPage.Click on Create Task button
    TM_CreateTaskForm.Enter Task Name       Demo Task
    TM_CreateTaskForm.Enter Description     Demo Task Desc
    TM_CreateTaskForm.Set Priority Medium
    TM_CreateTaskForm.Set Task Status       To Do
    TM_CreateTaskForm.Map Task to None
    TM_CreateTaskForm.Click on Save button to save the task

View created Task
    [Arguments]  ${Task_Name}






