
*** Settings ***
Library     SeleniumLibrary
Library     AutoItLibrary
Library     Process
Resource    C:/Users/Bhanu.Battu/PycharmProjects/TestProject/Resources/CTS_LoginPageKeywords.robot
Library     DataDriver      C:/Users/Bhanu.Battu/PycharmProjects/TestProject/TestData/robottestdata.xlsx      sheet_name=BHANU


Test Setup    open browser1      ${cts_url}      ${browser}
Test Teardown    close browser



Test Template       Testing xls - Victim and Claimant
#Test Template       Testing xls - Victim





*** Test Cases ***
#Testing xls1     ${username}     ${password}      ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}     ${input_Clmn_Lastname}       ${input_Clmn_Middlename}       ${input_Clmn_Firsttname}        ${Input_Clmn_Date}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}      ${input_Clmn_City}      ${input_Clmn_Zipcode}
#Testing xls2     ${username}     ${password}      ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}
Test case:CV Staff- COMP Application filling in MICAVS


*** Keywords ***

Testing xls - Victim and Claimant
   [Arguments]     ${username}     ${password}      ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}
   ...      ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}
   ...      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}     ${input_Clmn_Lastname}       ${input_Clmn_Middlename}
   ...      ${input_Clmn_Firsttname}        ${Input_Clmn_DOB}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}
   ...      ${input_Clmn_City}      ${input_Clmn_Zipcode}       ${input_Date_of_Crime}      ${input_Date_Crime_Reported}       ${input_Text_Police_or_Agency_Reported}     ${input_Text_Police_or_Agency_COntactName}
   ...      ${input_Text_Incident_number}       ${input_Text_Location_Of_Crime}     ${input_Text_Location_Of_Crime}     ${input_Text_City}      ${input_Text_Brief_Desc_Crime}
   ...      ${input_Text_Crime_was_not_Reported_to_police_3to48hrs}     ${input_Text_Not_filingCase_Within1year}        ${input_Text_Name_Offender}     ${input_Text_Name_Of_Court}
   ...      ${input_Text_Court_CaseNumber}      ${input_Text_Amnt_Ordered}      ${Input_Text_Pls_Explain}       ${input_Text_Name_Of_Attonery}      ${input_Text_Attonery_Telephone}
   ...      ${input_Text_VC_CHarity_care_pay_DON1}      ${Input_Text_ad_med_Trt_Required}       ${input_Text_Primary_Medical_Insurer}       ${input_Text_Victim_Employer_Name}
   ...      ${input_Victim_Employer_Ph_Num}     ${input_Text_Employer_Add1}     ${input_Text_Employer_Address2}     ${input_Text_Doctor_who_will_verify_medical_disability}     ${input_Text_From}      ${input_Text_Document_name}     ${Test}
#    [Arguments]     ${username}     ${password}
    Enter username and Passowrd     ${username}     ${password}
    click login button
    select MiCAVS Window and Click on COMP      ${username}
    Enter Victim Information and Claimant details and Click on Next1        ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}     ${input_Clmn_Lastname}       ${input_Clmn_Middlename}       ${input_Clmn_Firsttname}        ${Input_Clmn_DOB}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}      ${input_Clmn_City}      ${input_Clmn_Zipcode}       ${Test}
    Enter COMP - Crime Information details and Clcik on Next     ${input_Date_of_Crime}      ${input_Date_Crime_Reported}     ${input_Text_Police_or_Agency_Reported}     ${input_Text_Police_or_Agency_COntactName}      ${input_Text_Incident_number}       ${input_Text_Location_Of_Crime}     ${input_Text_Location_Of_Crime}     ${input_Text_City}      ${input_Text_Brief_Desc_Crime}      ${input_Text_Crime_was_not_Reported_to_police_3to48hrs}     ${input_Text_Not_filingCase_Within1year}
    Enter COMP - R&R details and Click on Next      ${input_Text_Name_Offender}     ${input_Text_Name_Of_Court}     ${input_Text_Court_CaseNumber}      ${input_Text_Amnt_Ordered}      ${Input_Text_Pls_Explain}       ${input_Text_Name_Of_Attonery}      ${input_Text_Attonery_Telephone}
    Enter COMP - Claim Determination details and Click on next      ${input_Text_VC_CHarity_care_pay_DON1}      ${Input_Text_ad_med_Trt_Required}       ${input_Text_Primary_Medical_Insurer}       ${input_Text_Victim_Employer_Name}      ${input_Victim_Employer_Ph_Num}     ${input_Text_Employer_Add1}     ${input_Text_Employer_Address2}     ${input_Text_Doctor_who_will_verify_medical_disability}     ${input_Text_From}
    Enter and add COMP - Documents and click on next        ${input_Text_Document_name}
    Ente COMP-Agreement Page and Click on submit         ${username}

 #   Enter Victim Information and Click on Next1        ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}

##Testing xls - Victim
#   [Arguments]     ${username}     ${password}      ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}
##    [Arguments]     ${username}     ${password}
#    Enter username and Passowrd     ${username}     ${password}
#    click login button
#    select MiCAVS Window and Click on COMP
#    Enter Victim Information and Click on Next1        ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}



