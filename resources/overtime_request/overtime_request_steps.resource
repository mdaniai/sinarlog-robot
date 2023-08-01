*** Settings ***
Resource    ../common/common_steps.resource
Resource    ../../locators/overtime_request/locator.resource
Resource    ../attendance/clock_out/clock_out_steps.resource

*** Keywords ***
User Confirm Overtime
    Page Should Contain Element    ${OVERTIME_CONFIRMATION_MODAL}
    Click Button    ${OVERTIME_CONFIRMATION_AFFIRM}
    Sleep    1s

User Input Valid Overtime Reason
    Page Should Contain Element    ${OVERTIME_REQUEST_MODAL}
    Input Text    ${OVERTIME_REQUEST_REASON}    Automation Overtime Reason

User Submit Overtime Request
    Click Button    ${OVERTIME_REQUEST_SUBMIT}