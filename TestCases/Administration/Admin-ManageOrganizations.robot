*** Settings ***
Documentation    MiCAVS WEB APPLICATION TESTING
Library     SeleniumLibrary
Library     AutoItLibrary
Library     Process
Library     collections
Variables       ../TestData/TestData.py
#Library     DataDriver      C:/Users/Bhanu.Battu/PycharmProjects/TestProject/TestData/robottestdata.xlsx      sheet_name=BHANU1

*** Variables ***
@{test1}     Bhanu   bhanu1  bhanu2  1   3D  46793649437694706   '$%#^&&
#@{test1}     ${TEST2}




*** Test Cases ***


Verify Admin user Dashboard
    [Tags]    Sanity    Regression  Functional
    log to console      **** Test case -1 is started *****
    Open CTS Portal to Login
    Enter Admin Crendetials in CTS Login Page
    Admin DASHBOARD in CTS
    log to console     **** Test case is Passed ****
    close all browsers

Veriy Administartion list of Modules
    [Tags]    Sanity    Regression  Functional
    log to console      **** Test Case -2 is started ****
    Open CTS Portal to Login
    Enter Admin Crendetials in CTS Login Page
    Admin DASHBOARD in CTS
    List of Administartion-Admin Modules
    log to console      **** Test case is Passed *****
    Close all browsers

Veriy Administartion - Admin Manage Organizations - Existing Organizations details and count
    [Tags]    Sanity    Regression  Functional
    log to console      **** Test Case -3 is started ****
    Open CTS Portal to Login
    Enter Admin Crendetials in CTS Login Page
    Admin DASHBOARD in CTS
    List of Administartion-Admin Modules
    Admin - Manage Organizations link in Admin page and Click Manage Organizations link
    Existing Manage Organizations and Count should be in Admin-Mangae Organizations page
    close all browsers

Veriy Administartion - Existing - Admin Manage Organizations details in all web table pages
    [Tags]    Sanity    Regression  Functional
    log to console      **** Test Case -3.1 is started ****
    Open CTS Portal to Login
    Enter Admin Crendetials in CTS Login Page
    Admin DASHBOARD in CTS
    List of Administartion-Admin Modules
    Admin - Manage Organizations link in Admin page and Click Manage Organizations link
    Existing Manage Organizations and Count should be in Admin-Mangae Organizations page
    Web table Pagination - Manage Organizations

    Log to console      **** Test case is Passed *****






*** Keywords ***

Open CTS Portal to Login
    [Tags]    Sanity    Regression  Functional
    open browser       https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
    maximize browser window





Enter Admin Crendetials in CTS Login Page
    input text      xpath://*[@id='main_content']/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[1]/input      LauC
    input text      xpath://*[@id='main_content']/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[2]/input      cvcs123
    capture page screenshot
    click button       Login


Admin DASHBOARD in CTS
    switch window       title=MICAVS
    sleep    25s
    capture page screenshot
    click element       xpath://*[@id="main_content"]/app-secured/section/app-dashboard/div[2]/app-user-statics/div/div/div/app-items/div[1]/div/a/div     # Adminstration



List of Administartion-Admin Modules
    sleep    10s
    page should contain element     //*[@id="main_content"]/app-secured/section/app-idams/div[1]/cvcs-page-title/div/div/div[1]/div/div/span[1]/h4      # Admin at Top of the page
    log to console      Admin Dashboard page navigated to Admmin Module
    capture page screenshot

Admin - Manage Organizations link in Admin page and Click Manage Organizations link
    page should contain element     //*[@id="main_content"]/app-secured/section/app-idams/div[1]/cvcs-page-title/div/div/div[1]/div/div/span[1]/h4       # manage Organizations
    log to console      Click Manage Organizations on left pane of page
    click link         Manage Organizations
    sleep    10s

Existing Manage Organizations and Count should be in Admin-Mangae Organizations page
    page should contain element    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[1]/div/div/app-paginator/div/div/div[1]/div/div/div/span[1]     # Total Results text
    capture page screenshot
    ${Totalnumber_Organizations}       get text    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[1]/div/div/app-paginator/div/div/div[1]/div/div/div/span[2]        # Count
    log to console    Total number of existing user roles : ${Totalnumber_Organizations}
    sleep    10s

Admin- Manage Organizations - Search
#    [Arguments]     ${Role_Name_value}
    ${len1}      get length    ${Role_Name}       #    List Variable passing from Test data Variable file
    ${len2}      get length    ${Role_Locators}   #    DROPDOWN LOCATORS -xpath added in list

    FOR    ${i}    IN RANGE     ${len1}
        IF  '${Role_Name[${i}]}' == '${Role_Name_value}'
            log     ${Role_Locators[${i}]}
            log to console      ${Role_Name[${i}]}
            click element       //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[1]/div/div[1]/roots-dropdown/div/div[3]/label
            sleep    5s
            click element       ${Role_Locators[${i}]}
        ELSE
            log to console      Role Name value ${Role_Name_value} not in Role Name Dropdown:${i}st loop
        END
    END
    click button        Apply
    sleep    20S

Web table Pagination - Manage Organizations
    Sleep       20s
    ${Total}     get text    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[1]/div/div/app-paginator/div/div/div[1]/div/div/div/span[2]    # Total Manage Organizations Results Count
    ${Total_count}      convert to integer    ${Total}
    ${rows}     get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr    # Webtable Rows in First page
    ${columns}      get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr[1]/td     # Webtable Columns
    ${Pagination_count}      evaluate    ${Total_count} / ${rows}      # Total Pagination count
    ${Pagination}      convert to number    ${Pagination_count}
    log to console      ${Pagination}
    log to console      ${rows}
    log to console      ${columns}

    IF    ${Pagination}<1
        ${Expesnse_type}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr[1]/td[1]
        log to console      ${Expesnse_type}

    ELSE

        FOR     ${x}    IN RANGE    0    ${Pagination}
            FOR     ${i}    IN RANGE    1   10                # Each web page has 10 rows
                ${i1}       convert to integer      ${i}
                ${rows_final}     get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr
#                log to console      ${rows_final}
                ${Role_Name_Col}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr[${i1}]/td[1]
                ${Role_Name_Co2}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-providers/form/div/div[2]/div[2]/div[2]/roots-table/div/div/table/tbody/tr[${i1}]/td[2]

                log to console      ${Role_Name_Col} : ${Role_Name_Co2}

                    EXIT FOR LOOP IF    ${i1} == ${rows_final}
            END

        click button    Next
        sleep    15s
        log to console      Pagination:${x}
        END
    END
    close all browsers



