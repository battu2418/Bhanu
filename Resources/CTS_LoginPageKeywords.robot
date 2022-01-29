*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     AutoItLibrary
Library     Process
Variables       ../PageObjects/Locators.py
#Variables       ../TestData/TestData.py
Variables       ../PageObjects/Intake_COMP_Victim_Claimant_page_Locators.py
Variables       ../PageObjects/Intake_COMP_Crime_information_page_locators.py
Variables       ../PageObjects/Intake_COMP_RR_Page_locators.py
Variables       ../PageObjects/Intake_COMP_Claim_Determination_Page_locators.py
Variables       ../PageObjects/Intake_COMP_Agreement_Page_locators.py
Variables       ../PageObjects/Intake_COMP_Documents_Page_locators.py
#Library     DataDriver      C:/Users/Bhanu.Battu/PycharmProjects/TestProject/TestData/robottestdata.xlsx      sheet_name=BHANU


*** Keywords ***

Open browser1
#    open browser       https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
#    maximize browser window
    [Arguments]     ${CTS_Url}      ${browser}
    open browser    ${cts_url}      ${browser}
    maximize browser window



Close all browser
    Close browser

Enter username and Passowrd
    [Arguments]     ${username}     ${password}
    input text      ${Txt_username}     ${username}
    input text      ${TXt_Password}     ${password}

Click Login button
    click button        ${button_Login}
    sleep    10s

Select MiCAVS Window and Click on COMP
    [Arguments]     ${username}
    switch window       ${window}
    sleep    10s
    IF   ('${username}'=='user01')
        click element       ${link_comp}
        ELSE IF     ('${username}'=='cvstaff')
        click element       ${link_comp1}

    END
    sleep    35s

Select MiCAVS Window and Click on COMP - CV Staff Dashboard
    switch window       ${window}
    sleep    10s
    click element       ${link_comp}
    sleep    35s


Enter password
    [Arguments]     ${password}
    input text      ${TXt_Password}     ${password}


Enter Victim Information and Click on Next1
    [Arguments]     ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}
    #[Arguments]     ${Input_VC_SSN}      ${Input_VC_CNTNUM}       ${Input_VC_EmailAdd}     ${Input_VC_VCAdd1}       ${Input_VC_VCAdd2}
    #[Arguments]     ${Input_VC_AnnualInc}        ${Input_VC_VCCity}       ${Input_VC_VCZipcode}
    input text      ${Text_Lastname}        ${input_VC_Lastname}
    input text      ${Text_Middlename}       ${input_VC_Middlename}
    input text      ${Text_Firstname}        ${input_VC_Firstname}
    input text      ${Text_Date}      ${Input_VC_Date}
    input text      ${text_ssn}     1234567890
    click element       ${Drop_Down_MaritalStatus}
    click element       ${Drop_Down_Item_Married}
    input text      ${text_cntnum}		${input_vc_cntnum}
    click element       ${Drop_Down_Gender}
    click element       ${Drop_Down_Item_Male}
    sleep       2s
    click element at coordinates        ${rb_US_mail_add_no}      7     6
    click element at coordinates        ${rb_US_mail_add_yes}       7       6
    input text      ${Text_vcadd1}     ${input_vc_vcadd1}
    input text      ${Text_VCAdd2}     ${input_vc_vcadd2}
    input text      ${Text_VCCity}        ${input_VC_VCCity}
   # click element       xapth:/html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[4]/div/div[5]/div/roots-dropdown/div/div[3]

    click element       ${Drop_Down_State}
    click element       ${drop_down_item_michigan}
    input text      ${Text_VCZipcode}     ${input_VC_VCZipcode}
    click element    ${RB_personally_physically_injured_NO}
    sleep       15s
    click element       ${RB_personally_physically_injured_YES}
    #click element       ${RB_personally_physically_injured_YES}
    #click element at coordinates        xpath://html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[5]/div[2]/roots-radiobutton/div       7       6
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[2]/div[1]/form[1]/div/div/div/div[3]/roots-radiobutton/div/div[2]
    input text      ${text_emailadd}		${input_vc_emailadd}
    input text      ${Text_AnnualInc}      ${input_VC_AnnualInc}
    click button        ${button_savenext}
    sleep    25s
    close browser

Victim and Claimant Physically injured_RB_YES
    [Arguments]     ${input_vc_emailadd}        ${input_VC_AnnualInc}
#    click element       ${RB_personally_physically_injured_YES}
    #click element       ${RB_personally_physically_injured_YES}
    #click element at coordinates        xpath://html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[5]/div[2]/roots-radiobutton/div       7       6
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[2]/div[1]/form[1]/div/div/div/div[3]/roots-radiobutton/div/div[2]
    input text      ${text_emailadd}		${input_vc_emailadd}
    input text      ${Text_AnnualInc}      ${input_VC_AnnualInc}
    click button        ${button_savenext}
    sleep    25s
#    close browser


Victim and Claimant Physically injured_RB_NO
    [Arguments]     ${input_Clmn_Lastname}       ${input_Clmn_Middlename}       ${input_Clmn_Firsttname}        ${Input_Clmn_DOB}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}      ${input_Clmn_City}      ${input_Clmn_Zipcode}       ${input_vc_emailadd}        ${input_VC_AnnualInc}
    click element    ${RB_personally_physically_injured_NO}
    sleep       5s
    #click element       ${RB_personally_physically_injured_YES}
    click element       ${Victim_is_Minor}
    click element       ${Victim_is_Deceased}
    input text      ${Text_clmnt_lastname}      ${input_Clmn_Lastname}
    input text      ${Text_Clmnt_Middlename}        ${input_Clmn_Middlename}
    input text      ${Text_Clmnt_Firstname}     ${input_Clmn_Firsttname}
    input text      ${Text_Clmnt_Date}      ${Input_Clmn_DOB}
    wait until element is visible       ${text_clmnt_ssn}       10s
    input text      ${text_clmnt_ssn}     1234567891
    click element    ${drop_down_claimnt_ms}
    click element    ${drop_down_claimnt_item_single}
    input text      ${text_clmnt_cntnum}		${input_Clmn_cntnum}
    wait until element is visible       ${drop_down_claimnt_gender}     25S
    click element    ${drop_down_claimnt_gender}
    click element    ${drop_down_claimnt_item_other}
    click element    ${Drop_down_Rel_to_VC}
    click element    ${Drop_down_Item_Rel_to_VC}
    click element at coordinates    ${rb_claimnt_us_mail_add_yes}       10       10
    Sleep       5s
    input text      ${Text_Claimnt_Add1}        ${input_Clmn_add1}
    input text      ${Text_Claimnt_Add2}        ${input_Clmn_add2}
    input text      ${Text_Claimnt_City}        ${input_Clmn_City}

    click element       ${Drop_down_Claimnt_State}
    click element       ${drop_down_calimnt_item_michigan}
    input text      ${Text_Claimnt_Zipcode}     ${input_Clmn_Zipcode}
    #click element at coordinates        xpath://html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[5]/div[2]/roots-radiobutton/div       7       6
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[2]/div[1]/form[1]/div/div/div/div[3]/roots-radiobutton/div/div[2]
    input text      ${text_emailadd}		${input_vc_emailadd}
    input text      ${Text_AnnualInc}      ${input_VC_AnnualInc}
    click button        ${button_savenext}
    sleep    15s



Enter Victim Information and Claimant details and Click on Next1
    [Documentation]
    [Arguments]     ${input_VC_Lastname}        ${input_VC_Middlename}      ${input_VC_Firstname}       ${Input_VC_Date}        ${input_vc_cntnum}      ${input_vc_emailadd}      ${input_vc_vcadd1}      ${input_vc_vcadd2}      ${input_VC_VCCity}       ${input_VC_VCZipcode}      ${input_VC_AnnualInc}     ${input_Clmn_Lastname}       ${input_Clmn_Middlename}       ${input_Clmn_Firsttname}        ${Input_Clmn_DOB}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}      ${input_Clmn_City}      ${input_Clmn_Zipcode}       ${Test}
    #[Arguments]     ${Input_VC_SSN}      ${Input_VC_CNTNUM}       ${Input_VC_EmailAdd}     ${Input_VC_VCAdd1}       ${Input_VC_VCAdd2}
    #[Arguments]     ${Input_VC_AnnualInc}        ${Input_VC_VCCity}       ${Input_VC_VCZipcode}
    input text      ${Text_Lastname}        ${input_VC_Lastname}
    input text      ${Text_Middlename}       ${input_VC_Middlename}
    input text      ${Text_Firstname}        ${input_VC_Firstname}
    input text      ${Text_Date}      ${Input_VC_Date}
    sleep    15s
    input text      ${text_ssn}     1234567890
    click element       ${Drop_Down_MaritalStatus}
    click element       ${Drop_Down_Item_Married}
    input text      ${text_cntnum}		${input_vc_cntnum}
    log to console      {testing starts}
    click element       ${Drop_Down_Gender}
    click element       ${Drop_Down_Item_Male}
    sleep       2s
    click element at coordinates        ${rb_US_mail_add_no}      7     6
    click element at coordinates        ${rb_US_mail_add_yes}       7       6
    input text      ${Text_vcadd1}     ${input_vc_vcadd1}
    input text      ${Text_VCAdd2}     ${input_vc_vcadd2}
    input text      ${Text_VCCity}        ${input_VC_VCCity}
    sleep    15s
    click element       ${Drop_Down_State}
    click element       ${drop_down_item_michigan}
    input text      ${Text_VCZipcode}     ${input_VC_VCZipcode}
    run keyword if    '${Test}' == '1'      Victim and Claimant Physically injured_RB_YES      ${input_vc_emailadd}        ${input_VC_AnnualInc}
    ...     ELSE        Victim and Claimant Physically injured_RB_NO   ${input_Clmn_Lastname}       ${input_Clmn_Middlename}       ${input_Clmn_Firsttname}        ${Input_Clmn_DOB}      ${input_Clmn_cntnum}        ${input_Clmn_add1}      ${input_Clmn_add2}      ${input_Clmn_City}      ${input_Clmn_Zipcode}       ${input_vc_emailadd}        ${input_VC_AnnualInc}
#    click element    ${RB_personally_physically_injured_NO}
#    sleep       5s
#    #click element       ${RB_personally_physically_injured_YES}
#    click element       ${Victim_is_Minor}
#    click element       ${Victim_is_Deceased}
#    input text      ${Text_clmnt_lastname}      ${input_Clmn_Lastname}
#    input text      ${Text_Clmnt_Middlename}        ${input_Clmn_Middlename}
#    input text      ${Text_Clmnt_Firstname}     ${input_Clmn_Firsttname}
#    input text      ${Text_Clmnt_Date}      ${Input_Clmn_Date}
#    input text      ${text_clmnt_ssn}     1234567891
#    input text      ${text_clmnt_cntnum}		${input_Clmn_cntnum}
#    click element    ${drop_down_claimnt_ms}
#    click element    ${drop_down_claimnt_item_single}
#    click element    ${drop_down_claimnt_gender}
#    click element    ${drop_down_claimnt_item_other}
#    click element    ${Drop_down_Rel_to_VC}
#    click element    ${Drop_down_Item_Rel_to_VC}
#    click element at coordinates    ${rb_claimnt_us_mail_add_yes}       10       10
#    Sleep       5s
#    input text      ${Text_Claimnt_Add1}        ${input_Clmn_add1}
#    input text      ${Text_Claimnt_Add2}        ${input_Clmn_add2}
#    input text      ${Text_Claimnt_City}        ${input_Clmn_City}
#
#    click element       ${Drop_down_Claimnt_State}
#    click element       ${drop_down_calimnt_item_michigan}
#    input text      ${Text_Claimnt_Zipcode}     ${input_Clmn_Zipcode}
#
#    #click element at coordinates        xpath://html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[5]/div[2]/roots-radiobutton/div       7       6
#    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[2]/div[1]/form[1]/div/div/div/div[3]/roots-radiobutton/div/div[2]
#    input text      ${text_emailadd}		${input_vc_emailadd}
#    input text      ${Text_AnnualInc}      ${input_VC_AnnualInc}
#    click button        ${button_savenext}
     sleep      10S

Enter COMP - Crime Information details and Clcik on Next
    [Arguments]     ${input_Date_of_Crime}      ${input_Date_Crime_Reported}     ${input_Text_Police_or_Agency_Reported}     ${input_Text_Police_or_Agency_COntactName}      ${input_Text_Incident_number}       ${input_Text_Location_Of_Crime}     ${input_Text_Location_Of_Crime}     ${input_Text_City}      ${input_Text_Brief_Desc_Crime}      ${input_Text_Crime_was_not_Reported_to_police_3to48hrs}     ${input_Text_Not_filingCase_Within1year}
    wait until element is visible       ${DP_Type_Crime}        80s
    click element       ${DP_Type_Crime}
    sleep   5S
    click element       ${DP_Value_Vehicleclaim}
    click element at coordinates        ${RB_Caused_Person_NO}       7       6
    input text      ${Text_Date_of_Crime}      ${input_Date_of_Crime}
    input text      ${Text_Date_Crime_Reported}      ${input_Date_Crime_Reported}
    click element       ${DP_County_Crime_OCCured}
    click element       ${DP_Value_ALCONA}
    sleep    5s
    input text      ${Text_Police_or_Agency_Reported}       ${input_Text_Police_or_Agency_Reported}             #TestPolice
    sleep       25s
    input text      ${Text_Police_or_Agency_COntactName}        ${input_Text_Police_or_Agency_COntactName}      #Test1
    input text      ${Text_Incident_number}       ${input_Text_Incident_number}                                 #INC2487195
    input text      ${Text_Location_Of_Crime}        ${input_Text_Location_Of_Crime}                            #ABC Cinemas
    input text      ${Text_City}        ${input_Text_City}                                                      #Walker
    click element       ${DP_state}
    click element       ${DP_Value_Michigan}
    input text      ${Text_Brief_Desc_Crime}       ${input_Text_Brief_Desc_Crime}                               #crime
    input text      ${Text_Crime_was_not_Reported_to_police_3to48hrs}      ${input_Text_Crime_was_not_Reported_to_police_3to48hrs}  #delay
    input text      ${Text_Not_filingCase_Within1year}     ${input_Text_Not_filingCase_Within1year}             #delayRS1
    click element       ${Chk_Attorney}
    click element       ${DP_Race_Ethnic_Background}
    click element       ${DP_Item_Asain}
    click element at coordinates        ${RB_BEFORE_Crime}     7       6
    click button        ${button_savenext}
    sleep       20S


Enter COMP - R&R details and Click on Next
    [Arguments]     ${input_Text_Name_Offender}     ${input_Text_Name_Of_Court}     ${input_Text_Court_CaseNumber}      ${input_Text_Amnt_Ordered}      ${Input_Text_Pls_Explain}       ${input_Text_Name_Of_Attonery}      ${input_Text_Attonery_Telephone}
    input text      ${Text_Name_Offender}     ${input_Text_Name_Offender}                   #offender1
    sleep    10s
    log to console    {system is ready to clcik Radio button}
    click element at coordinates        ${RB_OFN_Chrd_In_CC_YES}        7       6
    sleep    15s
    input text      ${Text_Name_Of_Court}       ${input_Text_Name_Of_Court}                 #Distric Court
    input text      ${Text_Court_CaseNumber}        ${input_Text_Court_CaseNumber}          #CC123456
    click element at coordinates        ${RB_CRT_ORDR_OFND_PAY_RES_YES}        7       6
    input text      ${Text_Amnt_Ordered}      ${input_Text_Amnt_Ordered}                     #3000
    click element at coordinates        ${RB_Civil_Court_action_YES}        7       6
    input text      ${Text_Pls_Explain}     ${Input_Text_Pls_Explain}                        #Explained
    click element at coordinates        ${RB_Settlement_NO}     7       6
    input text      ${Text_Name_Of_Attonery}        ${input_Text_Name_Of_Attonery}           #David1
    input text      ${Text_Attonery_Telephone}      ${input_Text_Attonery_Telephone}         #1234567890
    sleep       3s
    click button        ${button_savenext}
    sleep       10S
Enter COMP - Claim Determination details and Click on next
    [Arguments]     ${input_Text_VC_CHarity_care_pay_DON1}      ${Input_Text_ad_med_Trt_Required}       ${input_Text_Primary_Medical_Insurer}       ${input_Text_Victim_Employer_Name}      ${input_Victim_Employer_Ph_Num}     ${input_Text_Employer_Add1}     ${input_Text_Employer_Address2}     ${input_Text_Doctor_who_will_verify_medical_disability}     ${input_Text_From}
    sleep       10S
    click element       ${CHK_Medical_Expense_Benefits_Victim}
#    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[3]/div/roots-checkbox/div/div[2]
#    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[4]/div/roots-checkbox/div/div[2]
#    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[5]/div/roots-checkbox/div/div[2]
#    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[6]/div/roots-checkbox/div/div[2]
    click element at coordinates        ${RB_MIN_LOSSOF200_YES}     7       6
    click element at coordinates        ${RB_LOST_TWO_CNT_EARN_YES}     7       6
    click element at coordinates        ${RB_CRIMINAL_SA_YES}     7       6
    click element at coordinates        ${RB_RTD_AGE_DIS_YES}     7       6
    sleep       10s
    click element       ${CHK_Health_Insurance1}
    click element       ${CHK_Medicare1}
    click element       ${CHK_Automobile_Insurance1}
    click element at coordinates        ${RB_Ch_PA_DO_OT_YES}        7       6
    sleep       3S
    input text      ${Text_VC_CHarity_care_pay_DON1}        ${input_Text_VC_CHarity_care_pay_DON1}          #I got 100 dollars
    click element at coordinates        ${RB_MED_TRT_YES}        7       6
    input text      ${Text_ad_med_Trt_Required}        ${Input_Text_ad_med_Trt_Required}                    #yes Medical Treatnent required
    input text      ${Text_Primary_Medical_Insurer}     ${input_Text_Primary_Medical_Insurer}               #Aetna
    input text      ${Text_Victim_Employer_Name}       ${input_Text_Victim_Employer_Name}                   #ABC INC
    input text      ${Text_Victim_Employer_Ph_Num1}     ${input_Victim_Employer_Ph_Num}                 #7488469890
    input text      ${Text_Employer_Add1}       ${input_Text_Employer_Add1}                                 #Comp add1
    input text      ${Text_Employer_Add2}       ${input_Text_Employer_Address2}                                 #Comp add2
    input text      ${Text_Doctor_who_will_verify_medical_disability}       ${input_Text_Doctor_who_will_verify_medical_disability}         #Test doc
    input text      ${Text_From}      ${input_Text_From}                                                    #01/01/1990
    click element at coordinates        ${RB_TO_PRESENT}        7       6
    click element       ${CHK_NONE}
    click button        ${button_savenext}
    sleep       25S
Enter and add COMP - Documents and click on next
    [Arguments]     ${input_Text_Document_name}
    FOR     ${i}    IN RANGE    0   2
        click element       ${drop_down_Document_type}
        click element       ${Drop_down_itemized_bill}
        input text      ${Text_Document_name}       ${input_Text_Document_name}       #Test document for Itemized Bill
        sleep    15s
        click element       ${Button_Browse}
        sleep       10s
        Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
        sleep       10s
        click button       ${Button_Upload}
        sleep       10s

    END
    click button        ${button_savenext}
    sleep       30S

Ente COMP-Agreement Page and Click on submit
    [Arguments]     ${username}
    click element       ${CHK_Auth}
    click element       ${CHK_REPAYMENT}
    click element       ${CHK_Financial}
    click element       ${CHK_DECLARATION}
    IF   ('${username}'=='user01')
        click element       ${User01_CHK_Sign_application}
        input text      xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[3]/div/div[1]/input       Bhanu

        ELSE IF     ('${username}'=='cvstaff')
            click element       ${Cvstaff_CHK_Sign_application}
            log to console    Signature Check not required
    END
#    click element       ${CHK_Sign_application}
    #input text      xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[3]/div/div[1]/input       Bhanu
    click button        ${Button_Submit}
    sleep       100s

