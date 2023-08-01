*** Settings ***
Documentation    Test cases for employee leave request
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/leave_request/leave_request_steps.resource
Test Teardown    User End Session

*** Test Cases ***
User Can Create Leave Request
    Given User Has Logged In As Staff
    When User Open Leave Request Modal
    And User Fill In Valid Leave Request
    And User Check Leave Request Data
    And User Submit Valid Leave Request
    Then Verify Success Popup Shown
    And Verify Created Leave Request