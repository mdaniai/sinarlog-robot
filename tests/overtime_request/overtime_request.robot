*** Settings ***
Documentation    Test cases for employee overtime approval
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/overtime_request/overtime_request_steps.resource
Test Teardown    User End Session

*** Test Cases ***
User Can Submit Overtime
    Given User Has Logged In As Staff
    When User Click Clock Out Button
    And User Confirm Overtime
    And User Input Valid Overtime Reason
    And User Submit Overtime Request
    Then Verify Attendance Notification Shown
    And Verify Clock Out Timestamp Updated
    And Verify Attendance Log Updated