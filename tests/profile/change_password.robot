*** Settings ***
Documentation    Test cases for changing password for employee
...              Notes: Test per case
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/profile/change_password_steps.resource
Test Teardown    User End Session

*** Test Cases ***
# User Can Change Password
#     Given User Has Logged In As Staff
#     And User Access Profile Page
#     When User Open Change Password Modal
#     And User Input Valid New Password
#     And User Save New Password
#     Then Verify Password Saved
#     And Verify Login With New Password

User Cannot Change Password With Invalid Format
    Given User Has Logged In As Staff
    And User Access Profile Page
    When User Open Change Password Modal
    And User Input Invalid New Password
    Then Verify Save Button Disabled