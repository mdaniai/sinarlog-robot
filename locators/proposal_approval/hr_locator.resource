*** Variables ***
# Dashboard
${LEAVE_PROPOSAL_TABLE}            xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/table
${LEAVE_PROPOSAL_TABLE_HEADER}     xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/table/thead
${LEAVE_PROPOSAL_TABLE_BODY}       xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/table/tbody
${LEAVE_PROPOSAL_TABLE_ROW}        xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/table/tbody/tr[1]
${LEAVE_PROPOSAL_DETAIL_BUTTON}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[2]/table/tbody/tr[1]/td[8]/button

# Leave Proposal Modal
${LEAVE_PROPOSAL_MODAL}                    id=incomingLeaveProposalDetail
${LEAVE_PROPOSAL_MODAL_CLOSE_BUTTON}       xpath=//*[@id="incomingLeaveProposalDetail"]/form/button
${LEAVE_PROPOSAL_STATUS}                   xpath=//*[@id="incomingLeaveProposalAction"]/form/div/div[15]/div/div/p[1]
${LEAVE_PROPOSAL_REJECT_REASON_FORM}       id=parent-leave-rejection-reason
${LEAVE_PROPOSAL_REJECT_BUTTON}            xpath=//*[@id="incomingLeaveProposalAction"]/form/div/div[20]/button[1]
${LEAVE_PROPOSAL_REJECT_SUBMIT_BUTTON}     xpath=//*[@id="incomingLeaveProposalAction"]/form/div/div[22]/button[2]
${LEAVE_PROPOSAL_APPROVE_BUTTON}           xpath=//*[@id="incomingLeaveProposalAction"]/form/div/div[20]/button[2]
${LEAVE_PROPOSAL_APPROVE_SUBMIT_BUTTON}    xpath=//*[@id="incomingLeaveProposalAction"]/form/div/div[21]/button[2]