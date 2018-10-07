Feature: I want to logout
    As authenticated user
    I want to logout
    so that I return to login page as not authenticated user

Scenario: Log Out
    Given I am an authenticated user
    And I am on the home page
    When I click on "Esci"
    Then I should be not authenticated