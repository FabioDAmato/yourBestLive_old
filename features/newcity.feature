Feature: I want to go on the new city registration page
    As authenticated user
    I want to click on the new city button
    so that I am redirect to the new city registration page

Scenario: authenticated city page
    Given I am an authenticated users
    And I am on home page
    When I click on "Button"
    Then I should redirect to the city registration page
