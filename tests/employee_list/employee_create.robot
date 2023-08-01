*** Settings ***
Documentation    Test cases for employee creation
Resource    ../../resources/common/common_steps.resource
Resource    ../../resources/employee_list/employee_create_steps.resource
Test Teardown    User End Session

*** Test Cases ***
User Can Create Employee
    Given User Has Logged In As HR
    And User Go To Employees Page
    When User Access Create Employee Page
    And User Fill In Valid Employee Data
    And User Confirm Created Employee Data
    Then Verify Created Employee