*** Settings ***
Library     DateTime
Resource    ../../common/common_steps.resource
Resource    ../../../locators/attendance/clock_out/locator.resource

*** Keywords ***
User Click Clock Out Button
    Wait Until Page Contains Element    ${CLOCK_OUT_BUTTON}
    Sleep    1s
    Click Button    ${CLOCK_OUT_BUTTON}
    Sleep    2s

User Confirm Clock Out
    Page Should Contain Element    ${OVERTIME_CONFIRMATION_MODAL}
    Click Button    ${OVERTIME_CONFIRMATION_DENY}
    Sleep    1s

Verify Clock Out Timestamp Updated
    Element Should Contain    ${CLOCK_OUT_TIMESTAMP}    WIB

Verify Attendance Notification Shown
    Sleep    3s
    Element Text Should Be    ${NOTIFICATION}    Your attendance was successfully saved

Verify Attendance Log Updated
    ${date}    Get Current Date
    ${date}=    Convert Date    ${date}    result_format=%Y-%m-%d
    Element Text Should Be    ${ATTENDANCE_LOG_TABLE_CELL}\[${ATTENDANCE_LOG_TABLE_INDEX}[DATE]]    ${date}