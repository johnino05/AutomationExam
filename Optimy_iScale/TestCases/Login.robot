*** Settings ***
Library     SeleniumLibrary
Resource  Common.robot
Test Teardown  Close browser

*** Variables ***
#URL
${optimy_homepage}  https://qrqck8u5t9co.front.staging.optimy.net/en/
#Credentials
${username}  optimyautomationtester@gmail.com
${password}  2MsWseoj


*** Test Cases ***
FUNC01_Verify Successful Submitted Application Combination 1
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    first     last    address    1000    career     Male    Manual Automation tester     JIRA    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC02_Verify Successful Submitted Application Combination 2
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Female    Manual tester     Spreadsheet    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC03_Verify Successful Submitted Application Combination 3
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Prefer not to answer    Automation tester     Java    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC04_Verify Successful Submitted Application Combination 4
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC05_Verify Successful Submitted Application Combination 5
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC06_Verify Successful Submitted Application Combination 6
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC07_Verify Successful Submitted Application Combination 7
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC08_Verify Successful Submitted Application Combination 8
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC09_Verify Successful Submitted Application Combination 9
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed


FUNC10_Verify Successful Submitted Application Combination 10
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC011_Verify Successful Submitted Application Combination 11
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    first     last    address    1000    career     Male    Manual Automation tester     JIRA    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC12Verify Successful Submitted Application Combination 12
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Female    Manual tester     Spreadsheet    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC13_Verify Successful Submitted Application Combination 13
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Prefer not to answer    Automation tester     Java    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC14_Verify Successful Submitted Application Combination 14
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC15_Verify Successful Submitted Application Combination 15
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC16_Verify Successful Submitted Application Combination 16
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC17_Verify Successful Submitted Application Combination 17
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC18_Verify Successful Submitted Application Combination 18
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

FUNC19_Verify Successful Submitted Application Combination 19
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed


FUNC20_Verify Successful Submitted Application Combination 20
    Given Optimy Login Page URL
    When User Logins
    And Submit A New Application    new     one    address123    1000    careers     Male    Manual tester     Cypress    AF
    Then Input Values Are Correct in Summary
    And Thank You Message Was Displayed

*** Keywords ***
Optimy Login Page URL
    Open Browser    ${optimy_homepage}
#    Maximize Browser Window
    Wait Until Page Contains Element     ${btn_cookie_close}
    Click Element   ${btn_cookie_close}
    BuiltIn.Sleep   2

User Logins
    Wait Until Page Contains Element    ${btn_login}
    Click Element   ${btn_login}
    Wait Until Page Contains Element    ${txt_email}
    Input Text  ${txt_email}  ${username}
    Input Password  ${txt_password}   ${password}
    Click Element   ${btn_submit}

Continue Submit New Application
    Wait Until Page Contains Element    ${btn_continue_submit_new_application}
    Click Element   ${btn_continue_submit_new_application}

Submit A New Application
    [Arguments]  ${first_name}  ${last_name}    ${address}    ${postal_code}     ${career_goal}     ${gender}   ${role}     ${tools}    ${country_code}
    Set Test Variable    ${first_name}
    Set Test Variable    ${last_name}
    Set Test Variable    ${address}
    Set Test Variable    ${postal_code}
    Set Test Variable    ${career_goal}
    Set Test Variable    ${gender}
    Set Test Variable    ${tools}
    Set Test Variable    ${country_code}
    Set Test Variable    ${role}
        IF  '${role}' == 'Manual tester'
            ${i}  Set Variable   2
        END
        IF  '${role}' == 'Automation tester'
            ${i}  Set Variable   5
        END
        IF  '${role}' == 'Manual Automation tester'
            ${i}  Set Variable   8
        END
    Wait Until Page Contains Element    ${btn_submit_new_application}
    Click Element   ${btn_submit_new_application}
    ${c}=   Get Element Count   ${lbl_continue_application}
    Run Keyword If   ${c}>0     Continue Submit New Application
#Fill up forms: required fields
    Input Text  ${txt_first_name}  ${first_name}
    Input Text  ${txt_last_name}   ${last_name}
    Input Text  ${txt_unit_num_street}  ${address}
    Input Text  ${txt_postal_code}   ${postal_code}
    BuiltIn.Sleep   2
    Wait Until Page Contains Element  ${drpdwn_postal_code}
    Click Element  ${drpdwn_postal_code}
    Click Element  ${drpdwn_country}
    Wait Until Page Contains Element    css:option[value="${country_code}"]
    Click Element  css:option[value="${country_code}"]
    Choose File   ${btn_browse_files}   ${CURDIR}${/}${file_to_upload}
    Wait Until Page Contains Element    css:ul#field_64d3c1af-c688-597d-9803-77e4287f2fbb li label[aria-label="${gender}"] div.custom-control-label
    Click Element  css:ul#field_64d3c1af-c688-597d-9803-77e4287f2fbb li label[aria-label="${gender}"] div.custom-control-label
    Wait Until Page Contains Element    css:select#field_cba99291-980c-5cb1-91c2-1db8d294587b option:nth-child(${i})
    Click Element  css:select#field_cba99291-980c-5cb1-91c2-1db8d294587b option:nth-child(${i})
    Click Element  css:label[aria-label="${tools}"]
    Wait Until Page Contains Element    ${iframe_career_obj}
    Select Frame  ${iframe_career_obj}
    Execute JavaScript    document.body.innerHTML = '${career_goal}'
    Unselect Frame
    Wait Until Page Contains Element    ${btn_next_screen}
    Click Element  ${btn_next_screen}
    BuiltIn.Sleep   3
    Wait Until Element Is Not Visible   ${btn_next_screen}

Input Values Are Correct in Summary
    BuiltIn.Sleep   3
    Wait Until Page Contains Element    ${summary_first_name}
    ${actual_firstname}=  Get Text  ${summary_first_name}
    Should Be Equal As Strings  ${actual_firstname}    ${first_name}
    Wait Until Page Contains Element    ${summary_house_num}
    ${actual_summary_house_num}=  Get Text  ${summary_house_num}
    Should Be Equal As Strings  ${actual_summary_house_num}    ${address}
    Wait Until Page Contains Element    ${summary_postal}
    ${actual_summary_postal}=  Get Text  ${summary_postal}
    Should Be Equal As Strings  ${actual_summary_postal}    ${postal_code}
    Wait Until Page Contains Element    ${summary_country}
    ${actual_summary_country}=  Get Text  ${summary_country}
    Should Be Equal As Strings  ${actual_summary_country}    Afghanistan
    Wait Until Page Contains Element    ${summary_photo}
    ${actual_summary_country}=  Get Text  ${summary_photo}
    Should Be Equal As Strings  ${actual_summary_country}    test.png
    Wait Until Page Contains Element    ${summary_gender}
    ${actual_summary_gender}=  Get Text  ${summary_gender}
    Should Be Equal As Strings  ${actual_summary_gender}    ${gender}
    Wait Until Page Contains Element    ${summary_role}
    ${actual_summary_role}=  Get Text  ${summary_role}

    IF  '${role}' == 'Manual Automation tester'
        ${role}  Set Variable  Manual + Automation tester
    END

    Should Be Equal As Strings  ${actual_summary_role}    ${role}
     Wait Until Page Contains Element    ${summary_tools}
    ${actual_summary_tools}=  Get Text  ${summary_tools}
    Should Be Equal As Strings  ${actual_summary_tools}    ${tools}
    Wait Until Page Contains Element    ${summary_career_obj}
    ${actual_summary_career_obj}=  Get Text  ${summary_career_obj}
    Should Be Equal As Strings  ${actual_summary_career_obj}    ${career_goal}
    Click Element  ${btn_validate_and_send}

Thank You Message Was Displayed
    Wait Until Page Contains Element    ${txt_thank_you_msg}











