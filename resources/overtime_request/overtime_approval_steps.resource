*** Settings ***
Resource    ../common/common_steps.resource
Resource    ../../locators/proposal_approval/manager_locator.resource

*** Keywords ***
User Open Overtime Submission Modal
    Wait Until Page Contains Element    ${OVERTIME_SUBMISSION_PAGE}
    Scroll Element Into View    ${OVERTIME_SUBMISSION_PAGE}
    Click Button    ${OVERTIME_SUBMISSION_PAGE}
    Sleep    1s
    Wait Until Page Contains Element    ${OVERTIME_SUBMISSION_TABLE_ROW}
    Scroll Element Into View    ${OVERTIME_SUBMISSION_TABLE_ROW}
    Click Button    ${OVERTIME_SUBMISSION_DETAIL_BUTTON}
    Wait Until Page Contains Element    ${OVERTIME_SUBMISSION_STATUS}
    Element Text Should Be    ${OVERTIME_SUBMISSION_STATUS}    Pending

User Approve Overtime Submission
    Sleep    1s
    Click Button    ${OVERTIME_SUBMISSION_APPROVE_BUTTON}
    Click Button    ${OVERTIME_SUBMISSION_APPROVE_SUBMIT_BUTTON}

User Reject Overtime Submission
    Sleep    1s
    Click Button    ${OVERTIME_SUBMISSION_REJECT_BUTTON}
    Input Text    ${OVERTIME_SUBMISSION_REJECT_REASON_FORM}    Automation Rejection Reason Input
    Click Button    ${OVERTIME_SUBMISSION_REJECT_SUBMIT_BUTTON}
