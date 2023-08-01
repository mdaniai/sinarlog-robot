*** Settings ***
Documentation    Test cases for clock out
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/attendance/clock_out/clock_out_steps.resource
Test Teardown    User End Session

*** Test Cases ***
# User Can Clock Out Early
#     Given User Has Logged In As Staff
#     When User Click Clock Out Button
#     Then Verify Attendance Notification Shown
#     And Verify Clock Out Timestamp Updated
#     And Verify Attendance Log Updated

# User Can Clock Out Late
#     Given User Has Logged In As Staff
#     When User Click Clock Out Button
#     And User Confirm Clock Out
#     Then Verify Attendance Notification Shown
#     And Verify Clock Out Timestamp Updated
#     And Verify Attendance Log Updated

# User Cannot Clock On When Not Clocked In
#     Given User Has Logged In As Staff
#     When User Click Clock Out Button
#     Then Verify Fail Notification Shown    You have no active attendance