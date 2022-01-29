*** Settings ***
Documentation    MiCAVS WEB APPLICATION TESTING
Library     SeleniumLibrary
Library     AutoItLibrary
Library     Process

*** Test Cases ***
Test case1
    log to console      Testing started*** Settings ***
    Open CTS Portal to Login
    Enter CVSTAFF Crendetials in CTS Login Page
    CVSTAFF DASHBOARD in CTS - SEARCH
#    COMP Claim Application in Claim 360
cls



*** Keywords ***

Open CTS Portal to Login
    [Tags]    Sanity    Regression  Functional
    open browser       https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
    maximize browser window




Enter CVSTAFF Crendetials in CTS Login Page
    input text      xpath://*[@id='main_content']/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[1]/input      cvstaff
    input text      xpath://*[@id='main_content']/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[2]/input      cvcs123
    capture page screenshot
    click button       Login


CVSTAFF DASHBOARD in CTS - SEARCH
    switch window       title=MICAVS
    sleep    25s
    capture page screenshot
#   click element       xpath:/html/body/app-root/app-secured/section/app-dashboard/div[2]/app-user-statics/div/div/div/app-items/div[1]/div[3]/a/div
#   click element       xpath:/html/body/app-root/app-secured/section/app-dashboard/div[2]/app-user-statics/div/div/div/app-items/div[1]/div[1]/a/div
          # COMP
    ###------------ QUICK SEARCH - CLAIM#  -----------------####
#    @{Search}       create list    22R0005  2R0003
#    FOR     ${i}        IN      @{Search}
#    input text      id:Search     ${i}
#    click element    xpath://*[@id="navbarSupportedContent"]/div/div/button[1]
#    sleep    20s
#    log to console      ${i}
#    clear element text      id:Search
#    capture page screenshot
#    END
    ###------------ QUICK SEARCH - NAME -----------------####
    click element       xpath://*[@id="quickSearchDropdown"]/div[1]
    sleep       5s
    click link       Name
    sleep       5s
    input text      id:Search       %test%
    click element    xpath://*[@id="navbarSupportedContent"]/div/div/button[1]
    sleep    20s
    clear element text      id:Search
    capture page screenshot
    ###------------ QUICK SEARCH - SSN -----------------####
#    click element       xpath://*[@id="quickSearchDropdown"]/div[1]
#    sleep       5s
#    click link       SSN
#    sleep       5s
#    input text      id:Search       1234
#    click element    xpath://*[@id="navbarSupportedContent"]/div/div/button[1]
#    sleep    20s
#    clear element text      id:Search
#    capture page screenshot
#   click button        Next

    ###------------ QUICK SEARCH - PAGINATION ------------###
    ${Total}     get text    //*[@id="content"]/div/div[1]/app-paginator/div/div/div[1]/div/div[1]/div/span[2]    # Total Results Count
    ${Total1}       Remove String       ${Total     ,
    ${Total_count}      convert to integer    ${Total}
    ${rows}     get element count       xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr     # Webtable Rows in First page
    ${columns}      get element count       xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr[1]/td     # Webtable Columns
    ${Pagination_count}      evaluate    ${Total_count} / ${rows}      # Total Pagination count
    ${Pagination}      convert to number    ${Pagination_count}
    log to console      ${Pagination}
    log to console      ${rows}
    log to console      ${columns}

    IF    ${Pagination}<1
        ${CalimID}      get text        xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr[1]/td[1]
        log to console      ${CalimID}

    ELSE

        FOR     ${x}    IN RANGE    0    ${Pagination}
            FOR     ${i}    IN RANGE    1   10                # Each web page has 10 rows
                ${i1}       convert to integer      ${i}
                ${rows_final}     get element count       xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr
                log to console      ${rows_final}
#                IF    ${i1} <= ${rows_final}
                ${CalimID}      get text        xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr[${i1}]/td[1]
                log to console      ${CalimID}
#                EXIT FOR LOOP IF    $y == 4 && $i1 == $rows_final
                    EXIT FOR LOOP IF    ${i1} == ${rows_final}
            END

        click button    Next
        sleep    15s
        log to console      Pagination:${x}
        END
    END
    close all browsers

#    click element       xpath://*[@id="content"]/div/div[2]/roots-table/div/div/table/tbody/tr[1]/td[1]
#    sleep    60s

    ###-------------------Claim 360 -------------------####
COMP Claim Application in Claim 360
    click button        Expand All
    sleep    15s
    click element       xpath://*[@id="ui-panel-6"]/div[1]/roots-header/div/div/a          # Crime Edit
    Sleep   15s
    click element       xpath://*[@id="ui-panel-6-label"]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/button/span[1]              # Lookup field X
#    clear element text      xpath:/html/body/app-root/div/app-secured/section/app-360-comp/div[2]/div/div/div/app-case360-container/div/div[2]/app-claimdetails/div[5]/div/roots-panel/div/div[2]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/input
    input text      xpath:/html/body/app-root/div/app-secured/section/app-360-comp/div[2]/div/div/div/app-case360-container/div/div[2]/app-claimdetails/div[5]/div/roots-panel/div/div[2]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/input      Test
    sleep   20s
    press keys      xpath://*[@id="ui-panel-6-label"]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/div/ul/li       \\25
    press keys      xpath://*[@id="ui-panel-6-label"]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/div/ul/li       TAB
#   click element       xpath:/html/body/app-root/div/app-secured/section/app-360-comp/div[2]/div/div/div/app-case360-container/div/div[2]/app-claimdetails/div[4]/div/roots-panel/div/div[2]/div/div/form/div[5]/div[1]/div/app-search-agency/roots-autocomplete/span/div/ul/li/div
    sleep    15s
    click button        Save
    sleep    15s
    click button        Collapse All
    sleep    55s
    click link      Initial Review
    sleep    20s
    click link      Review
    sleep       50s
#    click element       xpath://*[@id="ui-tabpanel-2-label"]/span
#    sleep       30s
#    click element    xpath://*[@id="ui-tabpanel-3-label"]
#    sleep       30s
#    click element       xpath://*[@id="ui-tabpanel-4-label"]/span
    close all browsers


#    input text      id:Search     22R0003
#    click element    xpath://*[@id="navbarSupportedContent"]/div/div/button[1]

