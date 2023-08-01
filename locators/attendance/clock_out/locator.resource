*** Variables ***
${CLOCK_OUT_BUTTON}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/div/button
${CLOCK_OUT_TIMESTAMP}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/h5

# Overtime Confirmation
${OVERTIME_CONFIRMATION_MODAL}    id=overtimeSubmissionConfirmationModal
${OVERTIME_CONFIRMATION_DENY}    xpath=//*[@id="overtimeSubmissionConfirmationModal"]/form/div/div/button[1]
${OVERTIME_CONFIRMATION_AFFIRM}    xpath=//*[@id="overtimeSubmissionConfirmationModal"]/form/div/div/button[2]

#Attendance Log
${ATTENDANCE_LOG_TABLE}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/div[2]/table
${ATTENDANCE_LOG_TABLE_HEADER}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/div[2]/table/thead
${ATTENDANCE_LOG_TABLE_BODY}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/div[2]/table/tbody
${ATTENDANCE_LOG_TABLE_ROW}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/div[2]/table/tbody/tr
${ATTENDANCE_LOG_TABLE_CELL}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/div[2]/table/tbody/tr[1]/td
&{ATTENDANCE_LOG_TABLE_INDEX}    DATE=1    CLOCK_IN_TIME=2    CLOCK_IN_LOC=3    CLOCK_OUT_TIME=4    CLOCK_OUT_LOC=5