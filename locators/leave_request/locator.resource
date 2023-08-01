*** Variables ***
# Dashboard
${LEAVE_REQUEST_BUTTON}                 xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[3]/button
${LEAVE_REQUEST_TABLE}                  xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table
${LEAVE_REQUEST_TABLE_HEADER}           xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table/thead
${LEAVE_REQUEST_TABLE_BODY}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table/tbody
${LEAVE_REQUEST_TABLE_ROW}              xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table/tbody/tr
${LEAVE_REQUEST_TABLE_CELL}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table/tbody/tr[1]/td
${LEAVE_REQUEST_TABLE_ROW_NO}           xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[4]/div[2]/table/tbody/tr[1]/th
&{LEAVE_REQUEST_TABLE_INDEX}            REQUEST_DATE=1    START_DATE=2    END_DATE=3    TYPE=4    DURATION=5    STATUS=6    DETAIL=7

# Leave Request Modal
${LEAVE_REQUEST_MODAL}                  id=leaveRequestModal
${LEAVE_REQUEST_TYPE}                   id=leave-type-request
${LEAVE_REQUEST_DATE}                   xpath=//*[@id="rangeDate"]/div/input
${LEAVE_REQUEST_REASON}                 id=reason
${LEAVE_REQUEST_ATTACHMENT}             xpath=//*[@id="leaveRequestModal"]/form/div/div[4]/div/label
${LEAVE_REQUEST_VALID}                  xpath=//*[@id="leaveRequestModal"]/form/div/div[5]/div[1]/h5
${LEAVE_REQUEST_CHECK_BUTTON}           xpath=//*[@id="leaveRequestModal"]/form/div/div[5]/button[1]
${LEAVE_REQUEST_SUBMIT_BUTTON}          xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/button[2]
# Excess Leave
${LEAVE_REQUEST_REMAINING_LEAVE}        xpath=//*[@id="leaveRequestModal"]/form/div/div[5]/div[1]/h5/b[1]
${LEAVE_REQUEST_EXCESS_LEAVE}           xpath=//*[@id="leaveRequestModal"]/form/div/div[5]/div[1]/h5/b[2]
${LEAVE_REQUEST_SINGLE_EXCESS_CHECK}    xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div/div/input
${LEAVE_REQUEST_SINGLE_EXCESS_FORM}     xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div/input
${LEAVE_REQUEST_FIRST_EXCESS_CHECK}     xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div[1]/div/input
${LEAVE_REQUEST_FIRST_EXCESS_FORM}      xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div[1]/input
${LEAVE_REQUEST_SECOND_EXCESS_CHECK}    xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div[2]/div/input
${LEAVE_REQUEST_SECOND_EXCESS_FORM}     xpath=//*[@id="leaveRequestModal"]/form/div/div[6]/div[2]/input
${LEAVE_REQUEST_EXCESS_SUBMIT_BUTTON}    xpath=//*[@id="leaveRequestModal"]/form/div/div[7]/button[2]
# Success Leave Request Modal
${LEAVE_REQUEST_SUCCESS_MODAL}          id=successApplyLeaveModal
${LEAVE_REQUEST_CLOSE_SUCCESS_MODAL}    xpath=//*[@id="successApplyLeaveModal"]/form/div[2]/button