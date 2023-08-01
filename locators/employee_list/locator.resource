*** Variables ***
# Employee List
${EMPLOYEE_CREATE_BUTTON}          xpath=//a[@class='btn btn-secondary-normal normal-case font-bold text-white']
${EMPLOYEE_SORT_JOIN_DATE}         xpath=//button[@class='btn btn-secondary-outline dark:btn-secondary-outline-dark font-extrabold w-fit normal-case']
${EMPLOYEE_TABLE}                  xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table
${EMPLOYEE_TABLE_HEADER}           xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table/thead
${EMPLOYEE_TABLE_BODY}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table/tbody
${EMPLOYEE_TABLE_ROW}              xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table/tbody/tr
${EMPLOYEE_TABLE_CELL}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table/tbody/tr[1]/td
${EMPLOYEE_TABLE_ROW_NO}           xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/table/tbody/tr[1]/th
&{EMPLOYEE_TABLE_INDEX}            NAME=1    STATUS=2    EMAIL=3    JOB=4    JOIN_DATE=5    DETAIL=6

# Employee Create Page
${EMPLOYEE_FULL_NAME}              id=full-name
${EMPLOYEE_BIRTH_DATE}             xpath=//input[@placeholder='YYYY-MM-DD']
${EMPLOYEE_EMAIL}                  id=email
${EMPLOYEE_PHONE}                  id=phone-number
${EMPLOYEE_ADDRESS}                id=address
${EMPLOYEE_GENDER}                 xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/form/div/div[6]/select
${EMPLOYEE_MARITAL_STATUS}         xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/form/div/div[7]/select
${EMPLOYEE_NPWP}                   xpath=//*[@id="nik" and @type="text"]
${EMPLOYEE_RELIGION}               xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/form/div/div[9]/select
${EMPLOYEE_NIK}                    xpath=//*[@id="nik" and @type="number"]
${EMPLOYEE_PICTURE}                xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/form/div/div[11]/input

${EMPLOYEE_EMPLOYMENT_TYPE}        id=employment-select
${EMPLOYEE_POSITION}               id=job-select
${EMPLOYEE_ROLE}                   id=role-select
${EMPLOYEE_MANAGER}                id=manager-select

${EMPLOYEE_CONTACT_NAME}           id=full-name
${EMPLOYEE_CONTACT_PHONE}          id=phone-number
${EMPLOYEE_CONTACT_RELATION}       id=relation

${NEXT_BUTTON}                     xpath=//*[@id="root"]/div[1]/div[2]/div/div[4]/button[2]
${CONFIRM_BUTTON}                  xpath=//*[@id="root"]/div[1]/div[2]/div/div[4]/button[2]

# Employee Create Confirmation Modal
${SEND_BUTTON}                     xpath=//*[@id="createEmployeeModal"]/form/div[5]/button[1]