*** Settings ***
Library     DateTime
Resource    ../common/common_steps.resource
Resource    ../../locators/employee_list/locator.resource
Resource    employee_data.resource

*** Keywords ***
User Access Create Employee Page
    Click Element    ${EMPLOYEE_CREATE_BUTTON}
    Sleep    1s

User Fill In Valid Employee Data
    #Personal Information
    Input Text    ${EMPLOYEE_FULL_NAME}    ${NEW_EMPLOYEE}[full_name]
    Input Text    ${EMPLOYEE_BIRTH_DATE}    ${NEW_EMPLOYEE}[birth_date]
    Click Button    ${DARK_MODE}    #Workaround for calendar button
    Input Text    ${EMPLOYEE_EMAIL}    ${NEW_EMPLOYEE}[email]
    Input Text    ${EMPLOYEE_PHONE}    ${NEW_EMPLOYEE}[phone]
    Input Text    ${EMPLOYEE_ADDRESS}    ${NEW_EMPLOYEE}[address]
    Select From List By Label    ${EMPLOYEE_GENDER}    ${NEW_EMPLOYEE}[gender]
    Select From List By Label    ${EMPLOYEE_MARITAL_STATUS}    ${NEW_EMPLOYEE}[marital_status]
    Input Text    ${EMPLOYEE_NPWP}    ${NEW_EMPLOYEE}[npwp]
    Select From List By Label    ${EMPLOYEE_RELIGION}    ${NEW_EMPLOYEE}[religion]
    Input Text    ${EMPLOYEE_NIK}    ${NEW_EMPLOYEE}[nik]
    Click Button    ${NEXT_BUTTON}
    Sleep    1s
    #Work Information
    Select From List By Label    ${EMPLOYEE_EMPLOYMENT_TYPE}    ${NEW_EMPLOYEE}[employment_type]
    Select From List By Label    ${EMPLOYEE_POSITION}    ${NEW_EMPLOYEE}[position]
    Select From List By Label    ${EMPLOYEE_ROLE}    ${NEW_EMPLOYEE}[role]
    IF  "${NEW_EMPLOYEE}[role]" == "Staff"
        Select From List By Value    ${EMPLOYEE_MANAGER}    ${NEW_EMPLOYEE}[manager]
    END
    Click Button    ${DARK_MODE}    #Workaround for next button
    Click Button    ${NEXT_BUTTON}
    Sleep    1s
    #Emergency Contact
    Input Text    ${EMPLOYEE_CONTACT_NAME}    ${NEW_EMPLOYEE}[contact_name]
    Input Text    ${EMPLOYEE_CONTACT_PHONE}    ${NEW_EMPLOYEE}[contact_phone]
    Select From List By Label    ${EMPLOYEE_CONTACT_RELATION}    ${NEW_EMPLOYEE}[contact_relation]
    Click Button    ${DARK_MODE}    #Workaround for next button

User Confirm Created Employee Data
    Click Button    ${CONFIRM_BUTTON}
    Sleep    1s
    Click Button    ${SEND_BUTTON}
    Sleep    5s

Verify Created Employee
    Click Button    ${EMPLOYEE_SORT_JOIN_DATE}
    Sleep    1s
    Element Text Should Be    ${EMPLOYEE_TABLE_CELL}\[${EMPLOYEE_TABLE_INDEX}[NAME]]/div/div[2]    ${NEW_EMPLOYEE}[full_name]
    Element Text Should Be    ${EMPLOYEE_TABLE_CELL}\[${EMPLOYEE_TABLE_INDEX}[EMAIL]]    ${NEW_EMPLOYEE}[email]
    Element Text Should Be    ${EMPLOYEE_TABLE_CELL}\[${EMPLOYEE_TABLE_INDEX}[JOB]]    ${NEW_EMPLOYEE}[position]
    ${date}    Get Current Date
    ${date}=    Convert Date    ${date}    result_format=%Y-%m-%d
    Element Text Should Be    ${EMPLOYEE_TABLE_CELL}\[${EMPLOYEE_TABLE_INDEX}[JOIN_DATE]]    ${date}