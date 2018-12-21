*** Settings ***
Library  Selenium2Library
*** Variables ***
${LoginPage_UserName_TextField} =    name=j_username
${LoginPage_Password_TextField} =    name=j_password
${LoginPage_Login_Button} =          id=login-button

*** Keywords ***
Load GreytHR
    go to   http://project.gtin.gr8hr.biz
Enter User Name
    wait until page contains element   ${LoginPage_UserName_TextField}  2s
    input text  ${LoginPage_UserName_TextField}  admin
Enter Password
    input password  ${LoginPage_Password_TextField}  sa
Click on Login button
    click button   ${LoginPage_Login_Button}
