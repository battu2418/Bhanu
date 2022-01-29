*** Settings ***
Library  SeleniumLibrary
Documentation    MiCAVS WEB APPLICATION TESTING
Library     SeleniumLibrary
Library    OperatingSystem


*** Test Cases ***
#Test case1
#    Tc1 Verify ThirdParty Portal in SIT
#
#
#
#
#Tc2 Login with Valid Provider crdentials
#    [Tags]    Sanity    Regression  Functional
#    open browser       https://milogintpqa.michigan.gov/eai/tplogin/authenticate  chrome
#    maximize browser window
#    #set selenium speed  2 seconds
#    input text      name:userid     Provideronep0001
#    input text      id:password     Secret-PRO1a
#    click button       LOGIN
#    click element       xpath://*[@id="navlist"]/li/a[6]
#    click button        CONTINUE
#    close browser

Tc3 Verfiy Provide Dashbaord details in Third Party Portal
    [Tags]    Sanity    Regression
    open browser       https://htcinc-cloud.caretech.com/cvcs/portal/#/cz/login  chrome
    maximize browser window
    capture page screenshot
    #set selenium speed  2 seconds
    input text      xpath:/html/body/app-root/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[1]/input     user01
    input text      xpath:/html/body/app-root/app-login/div[2]/div/div[2]/div/div/div/div[2]/div/form/div[2]/input      cvcs123
    click button       Login
    sleep    5s
    switch window       title=MICAVS
    sleep    8s
    capture page screenshot
    click element       xpath:/html/body/app-root/app-secured/section/app-dashboard/div[2]/app-user-statics/div/div/div/app-items/div[1]/div[2]/a/div
    sleep    100s
    input text      id:lastname     Test1
    input text      id:middlename       Test Middle
    input text      id:firstname        Bhanu1
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[1]/div[6]/div/roots-calendar/span/input      01/01/1990
    input text      id:socialSecurityNumber     1234567890
    click element       xpath:/html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[1]/div[8]/div/roots-dropdown/div/div[3]/label
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[1]/div[8]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[1]/li
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[1]/div[9]/div/roots-dropdown/div/div[3]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[1]/div[9]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[2]/li
    input text      id:contactNumber		36257582365
    input text      id:address		Test@gmail.com
    sleep       2s
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[2]/div[3]/roots-radiobutton/div/div[2]      7     6
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[2]/div[2]/roots-radiobutton/div/div[2]       7       6
    input text      id:address1     Test Add1
    input text      id:address2     Test Add2
    input text      id:city1        walker
   # click element       xapth:/html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[4]/div/div[5]/div/roots-dropdown/div/div[3]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[4]/div/div[5]/div/roots-dropdown/div
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-victim/form[1]/div[2]/div[4]/div/div[5]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[22]/li/span
    input text      id:zipCode1     49564
    click element at coordinates        xpath://html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-victim/form[1]/div[2]/div[5]/div[2]/roots-radiobutton/div       7       6
    input text      id:annualIncome      45000
    click button        Save & Next
    sleep    100s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[1]/div[1]/div/roots-dropdown/div
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[1]/div[1]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[4]/li/span
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[2]/div/div/div/div[2]/roots-radiobutton/div/div[2]       7       6
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[3]/div[1]/div/div/roots-calendar/span/input      01/01/2021
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[3]/div[2]/div/div/roots-calendar/span/input      01/01/2021
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[3]/div[3]/div/roots-dropdown/div/div[3]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[3]/div[3]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[42]/li/span
    input text      id:repAgency        Test1
    input text      id:incidentNumber       INC2487195
    input text      id:crimeLocation        ABC Cinemas
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[5]/div[3]/div/roots-dropdown/div
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-crime/div[2]/form/div[5]/div[3]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[22]/li/span
    input text      id:crimeDesc        crime
    input text      id:delayReason      delay
    input text      id:delayReasonClaim     delayRS1
    click button        Save & Next
    sleep       100S
    input text      id:offenderName     offender1
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[1]/div/div/div[3]/div[3]/div/roots-radiobutton/div/div[2]/span      7       6
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[1]/div/div/div[5]/div[1]/div/div/div[1]/roots-radiobutton/div        7       6
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[1]/div/div/div[5]/div[2]/div/div/input      3000
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[1]/div/div/div[6]/div[1]/div/div[2]/div/roots-radiobutton/div       7       6
    input text      id:attorName        David1
    input text      id:attorneyPhoneNumber      1234567890
    sleep       3s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[1]/div[2]/div/roots-checkbox/div/div[2]       #checkbox
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[1]/div[3]/div/roots-checkbox/div/div[2]       #checkbox
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[1]/div[4]/div/roots-checkbox/div/div[2]       #checkbox
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[2]/div[1]/div/roots-dropdown/div
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[2]/div[1]/div/roots-dropdown/div/div[5]/div/ul/roots-dropdownitem[2]/li
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-rest-recovery/form[2]/div[3]/div[2]/div[2]/div/div[2]/div/roots-radiobutton[2]/div/div[2]      7       6
    click button        Save & Next
    sleep       100S
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[2]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[3]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[4]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[5]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[6]/div/roots-checkbox/div/div[2]
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[2]/div[2]/div/div[2]/div/roots-radiobutton/div/div[2]     7       6
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[3]/div[1]/div/div[2]/div/roots-radiobutton/div/div[2]     7       6
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[1]/div[2]/div[3]/div[2]/div/div[2]/div/roots-radiobutton/div/div[2]     7       6
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[2]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[3]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[4]/div/roots-checkbox/div/div[2]
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[2]/div[2]/div[2]/div/div/div/div[1]/roots-radiobutton/div/div[2]        7       6
    sleep       3S
    input text      xpath:/html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[2]/div[2]/div[2]/div/div/div/div[1]/div/input        I got 100 dollars
    click element at coordinates        xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[2]/div[2]/div[3]/div/div/div/div/div[1]/roots-radiobutton/div/div[2]        7       6
    input text      xpath:/html/body/app-root/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[2]/div[2]/div[3]/div/div/div/div/div[1]/div/input        yes Medical Treatnent required
    input text      id:primaryInsurer       Aetna Choice-2
    input text      id:victimEmployer       ABC INC
    input text      id:employeerPhoneNumber     7488469890
    input text      id:empAddress       Comp add1
    input text      id:empAddress       Comp add2
    input text      id:doctorDisable        Test doc
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[4]/div[2]/div[3]/div/div/div[1]/div/roots-calendar/span/input      01/01/1990
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[4]/div[2]/div[3]/div/div/div[2]/div/roots-calendar/span/input       01/03/1990
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-claim/form[4]/div[2]/div[4]/div[5]/div/roots-checkbox/div/div[2]
    click button        Save & Next
    sleep       100S
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[1]/td[2]/roots-fileupload/div/div[1]/span
    #click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[1]/td[2]/roots-fileupload/div/div[1]
    sleep       10s
    Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
    sleep       5s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[2]/td[2]/roots-fileupload/div/div[1]
    sleep       5s
    Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
    sleep       5s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[3]/td[2]/roots-fileupload/div/div[1]
    sleep       5s
    Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
    sleep       5s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[4]/td[2]/roots-fileupload/div/div[1]
    sleep       5s
    Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
    sleep       5s
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-income/div[2]/div/div/roots-table/div/div/table/tbody/tr[5]/td[2]/roots-fileupload/div/div[1]
    sleep       5s
    Run     C:\\Users\\Bhanu.Battu\\Documents\\File.exe
    sleep       5s
    click button        Save & Next
    sleep       10S
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[3]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[4]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[1]/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[2]/div/roots-checkbox/div/div[2]
    click element       xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[3]/div/div[1]/label/roots-checkbox/div/div[2]
    input text      xpath://*[@id="step-buttons"]/div[2]/div/app-agreement/div[2]/form/div/div[5]/div[3]/div/div[1]/input       Bhanu
    click button        Submit
    sleep       5s


##================================================
#    capture page screenshot
#    click element       xpath://*[@id="body"]/div[2]/div/div[4]/div/div/div/h4
#    click button        Acknowledge/Agree
#    #set selenium speed  10  seconds
#    switch window       title=MICAVS
#    sleep    8s
#    capture page screenshot
#    click element       xpath:/html/body/app-root/app-secured/section/app-dashboard/div[2]/app-user-statics/div/div/div/app-items/div[1]/div[1]/a/div
#    sleep    15s
#    mouse over      partial link:P Providerone
#    click element   partial link:P Providerone
#    click element    xpath://*[@id="navbarSupportedContent"]/ul/li/roots-dialog/div/div[1]/ul/li/a/button     # Logout
#    sleep       10s
#    switch window       title=MILogin - Home Page
#    click element       xpath://*[@id="navlist"]/li/a[6]
#    click button        CONTINUE
#    close browser





*** Keywords ***

Tc1 Verify ThirdParty Portal in SIT
    [Tags]    Sanity    Regression  Functional
    open browser       https://milogintpqa.michigan.gov/eai/tplogin/authenticate  chrome
    maximize browser window
    #set selenium speed  2 seconds
    close browser