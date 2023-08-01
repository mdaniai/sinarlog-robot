*** Settings ***
Resource    ../common/common_steps.resource
Resource    ../../locators/proposal_approval/manager_locator.resource

*** Keywords ***
User Open Leave Proposal Modal
    Wait Until Page Contains Element    ${LEAVE_PROPOSAL_TABLE_ROW}
    Scroll Element Into View    ${LEAVE_PROPOSAL_TABLE_ROW}
    Sleep    1s
    Click Button    ${LEAVE_PROPOSAL_DETAIL_BUTTON}
    Wait Until Page Contains Element    ${LEAVE_PROPOSAL_STATUS}
    Element Text Should Be    ${LEAVE_PROPOSAL_STATUS}    Pending

User Approve Leave Proposal
    Click Button    ${LEAVE_PROPOSAL_APPROVE_BUTTON}
    Click Button    ${LEAVE_PROPOSAL_APPROVE_SUBMIT_BUTTON}

User Reject Leave Proposal
    Sleep    1s
    Click Button    ${LEAVE_PROPOSAL_REJECT_BUTTON}
    Input Text    ${LEAVE_PROPOSAL_REJECT_REASON_FORM}    Automation Rejection Reason Input
    Click Button    ${LEAVE_PROPOSAL_REJECT_SUBMIT_BUTTON}
