*** Settings ***
Documentation    Test cases for clock in
...              Notes: Currently not possible to test clock in, need to bypass OTP
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/attendance/clock_in/clock_in_steps.resource
Test Teardown    User End Session

*** Test Cases ***
# User Can Clock In
#     Given User Has Logged In As Staff
#     When User Click Clock In Button
#     And User Input Valid OTP
#     Then Verify Success Modal Shown
#     And Verify Clock In Timestamp Updated

# User Cannot Clock In After Office End Time
#     Given User Has Logged In As Staff
#     When User Click Clock In Button
#     Then Verify Fail Notification Shown    Clocking in after office's end time is not allowed

# User Cannot Clock In When On Leave
#     Given User Has Logged In As Staff
#     When User Click Clock In Button
#     Then Verify Fail Notification Shown    Unable to clock in if employee is on leave