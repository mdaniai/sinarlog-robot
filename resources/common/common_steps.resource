*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/common/locator.resource
Resource    ../../locators/login/locator.resource
Resource    ../../locators/navigation/locator.resource
Resource    credentials.resource

*** Keywords ***
User Has Logged In As HR
    [Documentation]    User login as HR and landed in dashboard
    Open Browser    https://sinarlog.firebaseapp.com/    chrome
    Maximize Browser Window
    Input Text    ${LOGIN_EMAIL_FORM}    ${AUTOMATION_HR.email}
    Input Password    ${LOGIN_PASSWORD_FORM}    ${AUTOMATION_HR.pwd}
    Click Button    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${SINARLOG_LOGO}

User Has Logged In As Manager
    [Documentation]    User login as Manager and landed in dashboard
    Open Browser    https://sinarlog.firebaseapp.com/    chrome
    Maximize Browser Window
    Input Text    ${LOGIN_EMAIL_FORM}    ${AUTOMATION_MANAGER.email}
    Input Password    ${LOGIN_PASSWORD_FORM}    ${AUTOMATION_MANAGER.pwd}
    Click Button    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${SINARLOG_LOGO}

User Has Logged In As Staff
    [Documentation]    User login as Staff and landed in dashboard
    Open Browser    https://sinarlog.firebaseapp.com/    chrome
    Maximize Browser Window
    Input Text    ${LOGIN_EMAIL_FORM}    ${AUTOMATION_STAFF10.email}
    Input Password    ${LOGIN_PASSWORD_FORM}    ${AUTOMATION_STAFF10.pwd}
    Click Button    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${SINARLOG_LOGO}

User Go To Employees Page
    Click Element    ${NAV_EMPLOYEE}
    Sleep    2s

User Access Dashboard Page
    Click Element    ${NAV_DASHBOARD}

User Access Profile Page
    Click Element    ${PROFILE_PICTURE}
    Click Element    ${PROFILE_BUTTON}
    Sleep    2s

User End Session
    Click Element    ${PROFILE_PICTURE}
    Click Element    ${LOGOUT_BUTTON}
    Sleep    1s

Verify Success Notification Shown
    Sleep    3s
    Element Text Should Be    ${NOTIFICATION}    Your action has been successfully saved

Verify Fail Notification Shown
    [Arguments]    ${MESSAGE}
    Element Text Should Be    ${NOTIFICATION}    ${MESSAGE}