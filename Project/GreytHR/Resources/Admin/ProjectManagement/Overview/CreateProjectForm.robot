*** Settings ***
Library   Selenium2Library

*** Variables ***
${Create_Project_Form_Project_Name} =   xpath=(//input[@placeholder='Project name'])[2]
${Create_Project_Form_Code} =           xpath=(//input[@id='code'])[2]
${Create_Project_Form_Priority} =       xpath=(//select[@id='priority'])[2]
${Create_Project_Form_Description} =    xpath=(//textarea[@id='description'])[2]
${Create_Project_Form_Start_Date} =     xpath=(//gt-date-picker[@id='startDate'])[2]/div/div/div
${Create_Project_Form_End_Date} =       xpath=(//gt-date-picker[@id='endDate'])[2]/div/div/div
${Create_Project_Form_Client} =         xpath=(//select[@id='client'])[2]
${Create_Project_Form_Billable_Type} =  xpath=(//select[@id='billableType'])[2]
${Create_Project_Form_Wage_Rate} =      xpath=(//input[@id='wageRate'])[2]
${Create_Project_Form_Wage_Type} =      xpath=(//select[@id='wageType'])[2]
${Create_Project_Form_OT_Rate} =        xpath=(//input[@id='otRate'])[2]
${Create_Project_Form_OT_Type} =        xpath=(//select[@id='overtimeType'])[2]
${Create_Project_Form_Status} =         xpath=(//select[@id='status'])[2]
${Create_Project_Form_Save_Button} =    xpath=(//button[@class='btn create-button save-project'])[2]
${Duplicate_Project_Name_Message} =     xpath=//div[@class='alert alert-danger'][contains(text(),'again with new project name')]
${Duplicate_Project_Code_Message} =     xpath=//div[@class='alert alert-danger'][contains(text(),'again with new project code')]
${Create_Another_Project_Button} =      xpath=(//button[@class='btn create-button'])[2]
${Success_Banner_Close_Button} =        xpath=(//button[@class='btn close-button'])[2]
${Project_Created_Success_Banner} =     xpath=//div[@class='modal-body added-project-body']/p[@class='project-created']

*** Keywords ***
Enter Project Name
    [Arguments]  ${Project_Name}
    sleep  2s
    wait until page contains element  ${Create_Project_Form_Project_Name}   10s
    input text  ${Create_Project_Form_Project_Name}     ${Project_Name}

Enter Project Code
    [Arguments]  ${Project_Code}
    input text  ${Create_Project_Form_Code}        ${Project_Code}

Set Project Priority
    [Arguments]  ${Project_Priority}
    # 1 = Low
    # 2 = Medium
    # 3 = High
    select from list by index  ${create_project_form_priority}  ${Project_Priority}

Enter Project Description
    [Arguments]  ${Project_Description}
    input text  ${create_project_form_description}      ${Project_Description}

Set Project Start Date
    [Arguments]   ${Project_Start_Date}
    input text  ${create_project_form_start_date}

Set Project End Date
    [Arguments]  ${Project_End_Date}
    input text  ${create_project_form_end_date}

Set Project Client
    [Arguments]  ${Project_Client_Name}
    select from list by label  ${create_project_form_client}  ${Project_Client_Name}

Set Project Billable Type
    [Arguments]  ${Project_Billable_Type}
    # Time and Material
    # Non Billable
    select from list by label  ${create_project_form_billable_type}  ${Project_Billable_Type}

Set Project Wage Rate
    [Arguments]  ${Wage_Rate}
    input text  ${create_project_form_wage_rate}    ${Wage_Rate}

Set Project Wage Type
    [Arguments]  ${Wage_Type}
    # Per Day
    # Per Hour
    select from list by label  ${Create_Project_Form_Wage_Type}    ${Wage_Type}
Set Project OT Rate
    [Arguments]  ${OT_Rate}
    input text  ${Create_Project_Form_OT_Rate}    ${OT_Rate}

Set Project OT Type
    [Arguments]  ${OT_Type}
    # Per Day
    # Per Hour
    select from list by label  ${Create_Project_Form_OT_Type}    ${OT_Type}
Set Project Status
    [Arguments]  ${Status}
    # In Progress
    # Completed
    # Closed
    select from list by label  ${create_project_form_status}    ${Status}

Save Project Button
    click button  ${create_project_form_save_button}

Verify Project Created Success Banner is displayed
    wait until page contains element  ${project_created_success_banner}  10s
    element should be visible  ${project_created_success_banner}

Click On Create Another Project Button
    wait until page contains element  ${create_another_project_button}  10s
    click button  ${create_another_project_button}

Click On Success Banner Close Button
    click button  ${success_banner_close_button}

Duplicate Project Name Alert Message
    wait until page contains element  ${Duplicate_Project_Name_Message} 10s
    element should be visible  ${Duplicate_Project_Name_Message}

Duplicate Project Code Alert Message
    wait until page contains element  ${Duplicate_Project_Code_Message} 10s
    element should be visible  ${Duplicate_Project_Code_Message}

