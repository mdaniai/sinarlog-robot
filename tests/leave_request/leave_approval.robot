*** Settings ***
Documentation    Test cases for employee leave approval
...              Notes: Test per case with resource needed
Resource    ../../resources/common/common_steps.resource
# Resource    ../../resources/leave_request/hr_leave_approval_steps.resource
# Resource    ../../resources/leave_request/manager_leave_approval_steps.resource
Test Teardown    User End Session

*** Test Cases ***
# Manager Can Approve Staff Leave Request
#     Given User Has Logged In As Manager
#     When manager_leave_approval_steps.User Open Leave Proposal Modal
#     And manager_leave_approval_steps.User Approve Leave Proposal
#     Then Verify Success Notification Shown

# Manager Can Approve Staff Leave Request
#     Given User Has Logged In As Manager
#     When manager_leave_approval_steps.User Open Leave Proposal Modal
#     And manager_leave_approval_steps.User Reject Leave Proposal
#     Then Verify Success Notification Shown

# HR Can Approve Employee Leave Request
#     Given User Has Logged In As HR
#     When hr_leave_approval_steps.User Open Leave Proposal Modal
#     And hr_leave_approval_steps.User Approve Leave Proposal
#     Then Verify Success Notification Shown

# HR Can Reject Employee Leave Request
#     Given User Has Logged In As HR
#     When hr_leave_approval_steps.User Open Leave Proposal Modal
#     And hr_leave_approval_steps.User Reject Leave Proposal
#     Then Verify Success Notification Shown