*** Settings ***
Library     DateTime
Resource    ../common/common_steps.resource
Resource    ../../locators/leave_request/locator.resource
Resource    leave_request_data.resource

*** Keywords ***
User Open Leave Request Modal
    Click Button    ${LEAVE_REQUEST_BUTTON}
    Wait Until Page Contains Element    ${LEAVE_REQUEST_MODAL}

User Fill In Valid Leave Request
    Select From List By Label    ${LEAVE_REQUEST_TYPE}    ${LEAVE_DETAIL}[leave_type]
    Input Text    ${LEAVE_REQUEST_DATE}    ${LEAVE_DETAIL}[leave_date_from] ~ ${LEAVE_DETAIL}[leave_date_to]
    Click Element    ${LEAVE_REQUEST_TYPE}
    Input Text    ${LEAVE_REQUEST_REASON}    ${LEAVE_DETAIL}[leave_reason]
    Click Element At Coordinates    ${LEAVE_REQUEST_MODAL}    1    1

User Check Leave Request Data
    Click Button    ${LEAVE_REQUEST_CHECK_BUTTON}
    Sleep    2s
    Element Text Should Be    ${LEAVE_REQUEST_VALID}    Your leave request looks good. Click the submit button to apply for the leave.

User Submit Valid Leave Request
    Click Button    ${LEAVE_REQUEST_SUBMIT_BUTTON}
    Sleep    2s

Verify Success Popup Shown
    Wait Until Page Contains Element    ${LEAVE_REQUEST_SUCCESS_MODAL}
    Click Button    ${LEAVE_REQUEST_CLOSE_SUCCESS_MODAL}
    Sleep    1s

Verify Created Leave Request
    ${date}    Get Current Date
    ${date}=    Convert Date    ${date}    result_format=%Y-%m-%d
    Element Text Should Be    ${LEAVE_REQUEST_TABLE_CELL}\[${LEAVE_REQUEST_TABLE_INDEX}[REQUEST_DATE]]    ${date}
    Element Text Should Be    ${LEAVE_REQUEST_TABLE_CELL}\[${LEAVE_REQUEST_TABLE_INDEX}[START_DATE]]    ${LEAVE_DETAIL}[leave_date_from]
    Element Text Should Be    ${LEAVE_REQUEST_TABLE_CELL}\[${LEAVE_REQUEST_TABLE_INDEX}[END_DATE]]    ${LEAVE_DETAIL}[leave_date_to]
    Element Text Should Be    ${LEAVE_REQUEST_TABLE_CELL}\[${LEAVE_REQUEST_TABLE_INDEX}[TYPE]]    ${LEAVE_DETAIL}[leave_type]
    Element Text Should Be    ${LEAVE_REQUEST_TABLE_CELL}\[${LEAVE_REQUEST_TABLE_INDEX}[STATUS]]    Pending