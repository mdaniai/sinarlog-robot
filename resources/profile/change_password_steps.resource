*** Settings ***
Resource    ../common/common_steps.resource
Resource    ../../locators/profile/locator.resource

*** Keywords ***
User Open Change Password Modal
    Click Button    ${PROFILE_CHANGE_PASSWORD_BUTTON}
    Sleep    1s
    Wait Until Page Contains Element    ${CHANGE_PASSWORD_INFO}

User Input Valid New Password
    Input Password    ${CHANGE_PASSWORD_NEW}    Password1234!
    Input Password    ${CHANGE_PASSWORD_CONFIRM}    Password1234!

User Input Invalid New Password
    Input Password    ${CHANGE_PASSWORD_NEW}    Password123
    Input Password    ${CHANGE_PASSWORD_CONFIRM}    Password123

User Save New Password
    Click Button    ${CHANGE_PASSWORD_SAVE}
    Sleep    2s

Verify Password Saved
    Element Text Should Be    ${NOTIFICATION}    Password saved successfully

Verify Login With New Password
    User Access Dashboard Page    #Workaround
    User End Session
    Input Text    ${LOGIN_EMAIL_FORM}    ${AUTOMATION_STAFF.email}
    Input Password    ${LOGIN_PASSWORD_FORM}    Password1234!
    Click Button    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${SINARLOG_LOGO}

Verify Save Button Disabled
    Element Should Be Disabled    ${CHANGE_PASSWORD_SAVE}
    Click Element    ${CHANGE_PASSWORD_CLOSE_BUTTON}