*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource        C:/Users/Bhanu.Battu/PycharmProjects/TestProject/Resources/CTS_LoginPageKeywords.robot
Library     DataDriver      C:/Users/Bhanu.Battu/PycharmProjects/TestProject/TestData/robot test data.xlsx      sheet_name=BHANU



#Test Template    Test case_Verify_Xls testing

#*** Variables ***
#${username1}        user01
#${password1}        cvcs123




*** Test Cases ***

Test case_Verify the Benefits & Required documents list in Documents screen, if benefits selected from calim determination screen - RU
    [Tags]    DEBUG
#   open browser       https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
    open browser1    ${CTS_Url}      ${Browser}
    maximize browser window
    capture page screenshot
    enter username and passowrd     ${username}     ${password}
    click login button
    select micavs window and click on comp
    Enter Victim Information and Click on Next1     ${input_VC_Lastname}    ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}
#    enter username      ${username}
#    enter password      ${password}
    #set selenium speed  2 seconds
#    input text      xpath:/html/body/app-root/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[1]/input      user01
#    input text      xpath:/html/body/app-root/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[2]/input      cvcs123
    capture page screenshot



#Test case_Verify_Xls testing
#    [Tags]    DEBUG
#    Open browser        https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
##    open browser1    ${CTS_Url}      ${Browser}
#    maximize browser window
#    capture page screenshot
#    enter username and passowrd     ${username}     ${password}


*** Keywords ***

Open
     Open browser        https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome

close1
    close browser

Test case_Verify_Xls testing        ${username}     ${password}
    [Tags]    DEBUG
#    Open browser        https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
#    open browser1    ${CTS_Url}      ${Browser}
    maximize browser window
    enter username and passowrd     ${username}     ${password}