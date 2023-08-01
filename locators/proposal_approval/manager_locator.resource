*** Variables ***
# Dashboard
${LEAVE_PROPOSAL_PAGE}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/button[1]
${LEAVE_PROPOSAL_TABLE}            xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table
${LEAVE_PROPOSAL_TABLE_HEADER}     xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/thead
${LEAVE_PROPOSAL_TABLE_BODY}       xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody
${LEAVE_PROPOSAL_TABLE_ROW}        xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody/tr
${LEAVE_PROPOSAL_DETAIL_BUTTON}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody/tr[1]/td[8]/button

${OVERTIME_SUBMISSION_PAGE}             xpath=//*[@id="root"]/div[1]/div[2]/div/div[5]/button[2]
${OVERTIME_SUBMISSION_TABLE}            xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table
${OVERTIME_SUBMISSION_TABLE_HEADER}     xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/thead
${OVERTIME_SUBMISSION_TABLE_BODY}       xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody
${OVERTIME_SUBMISSION_TABLE_ROW}        xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody/tr
${OVERTIME_SUBMISSION_DETAIL_BUTTON}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[6]/div/div[2]/table/tbody/tr[1]/td[5]/button

# Leave Proposal Modal
${LEAVE_PROPOSAL_MODAL}                    id=incomingLeaveProposalDetail
${LEAVE_PROPOSAL_MODAL_CLOSE_BUTTON}       xpath=//*[@id="incomingLeaveProposalDetail"]/form/button
${LEAVE_PROPOSAL_STATUS}                   xpath=//*[@id="incomingLeaveProposalDetail"]/form/div/div[15]/p
${LEAVE_PROPOSAL_REJECT_REASON_FORM}       id=parent-leave-rejection-reason
${LEAVE_PROPOSAL_REJECT_BUTTON}            xpath=//*[@id="incomingLeaveProposalDetail"]/form/div/div[20]/button[1]
${LEAVE_PROPOSAL_REJECT_SUBMIT_BUTTON}     xpath=//*[@id="incomingLeaveProposalDetail"]/form/div/div[22]/button[2]
${LEAVE_PROPOSAL_APPROVE_BUTTON}           xpath=//*[@id="incomingLeaveProposalDetail"]/form/div/div[20]/button[2]
${LEAVE_PROPOSAL_APPROVE_SUBMIT_BUTTON}    xpath=//*[@id="incomingLeaveProposalDetail"]/form/div/div[21]/button[2]

# Overtime Submission Modal
${OVERTIME_SUBMISSION_MODAL}                    id=incomingOvertimeSubmissionDetail
${OVERTIME_SUBMISSION_MODAL_CLOSE_BUTTON}       xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/button
${OVERTIME_SUBMISSION_STATUS}                   xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/div/div[11]/p
${OVERTIME_SUBMISSION_REJECT_REASON_FORM}       id=parent-leave-rejection-reason
${OVERTIME_SUBMISSION_REJECT_BUTTON}            xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/div/div[12]/button[1]
${OVERTIME_SUBMISSION_REJECT_SUBMIT_BUTTON}     xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/div/div[14]/button[2]
${OVERTIME_SUBMISSION_APPROVE_BUTTON}           xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/div/div[12]/button[2]
${OVERTIME_SUBMISSION_APPROVE_SUBMIT_BUTTON}    xpath=//*[@id="incomingOvertimeSubmissionDetail"]/form/div/div[13]/button[2]