Feature: I want to go on the new city registration page
    As an authenticated user
    I want to click on the new city button
    so that I am redirect to the home page

Scenario: not authenticated city page
    Given I am a not authenticated users
    And I am on home
    When I click on "button"
    Then I should redirect to the home 