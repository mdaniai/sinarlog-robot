*** Settings ***
Library     DateTime
Resource    ../../common/common_steps.resource
Resource    ../../../locators/attendance/clock_in/locator.resource

*** Keywords ***
User Click Clock In Button
    Wait Until Page Contains Element    ${CLOCK_IN_BUTTON}
    Click Button    ${CLOCK_IN_BUTTON}
    Sleep    2s

User Input Valid OTP
    Input Text    ${CLOCK_IN_OTP_INPUT}    123456    #Input OTP
    Click Button    ${CLOCK_IN_OTP_SUBMIT}
    Sleep    2s
    
Verify Success Modal Shown
    Page Should Contain Element    ${CLOCK_IN_SUCCESS_OTP_MODAL}
    Click Button    ${CLOCK_IN_SUCCESS_OTP_BUTTON}
    Sleep    1s

Verify Clock In Timestamp Updated
    Element Should Contain    ${CLOCK_IN_TIMESTAMP}    WIB