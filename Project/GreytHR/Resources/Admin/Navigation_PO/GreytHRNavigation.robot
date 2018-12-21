*** Settings ***
Library   Selenium2Library
*** Variables ***

${GHRNav_Task&Checkslit_Menu1} =         xpath=(//i[@class="icon-tasks"])[1]
${GHRNav_Task&Checkslit_Menu2} =         xpath=(//i[@class="icon-tasks"])[2]
${GHRNav_ProjectManagement_Menu1} =      xpath=(//i[@class="icon-gt-project-management2"])[1]
${GHRNav_ProjectManagement_Menu2} =      xpath=(//i[@class="icon-gt-project-management2"])[2]
${GHRNav_ProjectOverview_Submenu1} =     xpath=(//i[@class="icon-gt-project-management2"])[1]/../../following-sibling::ul/li/a/span[contains(text(),'Overview')]
${GHRNav_ProjectWorkdays_Submenu1} =     xpath=(//i[@class="icon-gt-project-management2"])[1]/../../following-sibling::ul/li/a/span[contains(text(),'Workdays')
${GHRNav_ProjectOverview_Submenu2} =     xpath=(//i[@class="icon-gt-project-management2"])[2]/../../following-sibling::ul/li/a/span[contains(text(),'Overview')]
${GHRNav_ProjectWorkdays_Submenu2} =     xpath=(//i[@class="icon-gt-project-management2"])[2]/../../following-sibling::ul/li/a/span[contains(text(),'Workdays')]



*** Keywords ***

Click on unexpanded Taskmanagement menu
    click element   ${GHRNav_Task&Checkslit_Menu1}
Click on expanded Taskmanagement menu
    click element   ${GHRNav_Task&Checkslit_Menu2}
Click on unexpanded ProjectManagement menu
    click element   ${GHRNav_ProjectManagement_Menu1}
Click on expanded ProjectManagement menu
    click element   ${GHRNav_ProjectManagement_Menu2}
Click on Project Overview page in GreytHR
    click element   ${GHRNav_ProjectOverview_Submenu2}
Click on Project Overview page in Project
    click element   ${GHRNav_ProjectOverview_Submenu1}
Click on Project Workdays page in GreytHR
    click element   ${GHRNav_ProjectWorkdays_Submenu2}
Click on Project Workdays page in Project
    click element   ${GHRNav_ProjectWorkdays_Submenu1}



#Click on Project ProjectOverview.robot page
#    ${Menu} =  element should be visible  ${GHRNav_ProjectManagement_Menu2}
#    Run Keyword If  ${Menu} == 'true'  click element  ${GHRNav_ProjectOverview_Submenu2}
#    click element  ${GHRNav_ProjectOverview_Submenu2}
#    run keyword  ElseIf  ${menu} == 'false'
#    click element  ${GHRNav_ProjectOverview_Submenu1}