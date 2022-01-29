*** Settings ***
Documentation    MiCAVS WEB APPLICATION TESTING
Library     SeleniumLibrary
Library     AutoItLibrary
Library     Process
Library     openpyxl
Library     collections
Variables       ../../TestData/MiCAVS_dropdowns.py
Library     DataDriver      C:/Users/Bhanu.Battu/PycharmProjects/TestProject/TestData/robottestdata.xlsx      sheet_name=BHANU1

#*** Variables ***
#@{test1}     Bhanu   bhanu1  bhanu2  1   3D  46793649437694706   '$%#^&&
#@{test1}     ${TEST2}

Test Setup    Open CTS Portal to Login
Test Teardown    Close browser



Test Template       Admin-Manage user roles - Search - Select Role Name from Role Name dropdown


*** Test Cases ***
Test Case : Manage User Roles-Search




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

Admin - Manage User roles link in Admin page and Click Manage user roles link
    log to console      Click Manage user roles on left pane of page
    click link       Manage User Roles
    sleep    10s

Existing user roles and Count should be in Admin-Mangae user roles page
    page should contain element    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[1]/div/div[1]/label     # Role Summary
    capture page screenshot
    ${Totalnumber_user_roles}       get text    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[2]/div/div/app-paginator/div/div/div[1]/div/div/div/span[2]
    log to console    Total number of existing user roles : ${Totalnumber_user_roles}
    sleep    10s

Existing users and Count should be in Admin-Mangae user roles page
    click element       xpath://*[@id="menu_ul"]/li[2]              # user
    sleep    15s
    page should contain element    xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-users/div/div/div[2]/div[1]/div/div/div/div/div[1]/p/span     # user Summary
    capture page screenshot
    ${Total number of_users}       get text     xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-users/div/div/div[2]/div[2]/div/div/app-paginator/div/div/div[1]/div/div/div/span[2]
    log to console    Total number of existing users : ${Total number of_users}



Admin-Manage user roles - Search - Select Role Name from Role Name dropdown
    [Arguments]     ${Role_Name_value}
    Enter Admin Crendetials in CTS Login Page
    Admin DASHBOARD in CTS
    List of Administartion-Admin Modules
    Admin - Manage User roles link in Admin page and Click Manage user roles link
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
    Web table Pagination - user roles


Web table Pagination - user roles
    Sleep       20s
    ${Total}     get text    //*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[2]/div/div/app-paginator/div/div/div[1]/div/div/div/span[2]    # Total Results Count
    ${Total_count}      convert to integer    ${Total}
    ${rows}     get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/tbody/tr    # Webtable Rows in First page
    ${columns}      get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/tbody/tr[1]/td     # Webtable Columns
    ${Pagination_count}      evaluate    ${Total_count} / ${rows}      # Total Pagination count
    ${Pagination}      convert to number    ${Pagination_count}
    log to console      ${Pagination}
    log to console      ${rows}
    log to console      ${columns}

    IF    ${Pagination}<1
        ${Role_Name_Col}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/thead/tr[1]/td[1]
        log to console      ${Role_Name_Col}

    ELSE

        FOR     ${x}    IN RANGE    0    ${Pagination}
            FOR     ${i}    IN RANGE    1   10                # Each web page has 10 rows
                ${i1}       convert to integer      ${i}
                ${rows_final}     get element count       xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/tbody/tr
#                log to console      ${rows_final}
                ${Role_Name_Col}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/tbody/tr[${i1}]/td[1]
                ${Role_Name_Co2}      get text        xpath://*[@id="main_content"]/app-secured/section/app-idams/div[2]/div/div/div/app-system-maintenance-container/div/div[2]/app-roles/div/div/div[2]/div[3]/div/roots-table/div/div/table/tbody/tr[${i1}]/td[2]

                log to console      ${Role_Name_Col} : ${Role_Name_Co2}

                    EXIT FOR LOOP IF    ${i1} == ${rows_final}
            END

        click button    Next
        sleep    15s
        log to console      Pagination:${x}
        END
    END
    close all browsers





