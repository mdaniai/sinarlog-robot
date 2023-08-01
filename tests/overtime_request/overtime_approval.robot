*** Settings ***
Documentation    Test cases for employee overtime approval
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/overtime_request/overtime_approval_steps.resource
Test Teardown    User End Session

*** Test Cases ***
# Manager Can Approve Staff Overtime Submission
#     Given User Has Logged In As Manager
#     When User Open Overtime Submission Modal
#     And User Approve Overtime Submission
#     Then Verify Success Notification Shown

# Manager Can Reject Staff Overtime Submission
#     Given User Has Logged In As Manager
#     When User Open Overtime Submission Modal
#     And User Reject Overtime Submission
#     Then Verify Success Notification Shown