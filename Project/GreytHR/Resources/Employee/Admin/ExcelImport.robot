*** Settings ***
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
${Excel_Import_Upload_File_Button} =    xpath=//input[@name='file']
${Excel_Import_Download_Sample_File_Link} =    xpath=//a[contains(text(),'Download a sample file.')]


*** Keywords ***
Upload workdays data
    [Arguments]  ${Excel_File_Path}
    Choose file   ${excel_import_upload_file_button}   ${Excel_File_Path}

Verify Sample File is Downloaded
    click element  ${excel_import_download_sample_file_link}
    Wait Until Created  C:/Users/Mubarak/Downloads/Project Workdays[0-20].xls
    file should exist   C:/Users/Mubarak/Downloads/Project Workdays[0-20].xls

