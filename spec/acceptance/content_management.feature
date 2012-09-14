Feature: Content Management
  As an administrator
  In order to expand on the original restaurants
  I want to be able to add/modify Restaurants

  Background: Logging in
    Given I am logged in as an admin
    And I am on the dashboard

  Scenario: Logged in
    Then I should be on the dashboard

  Scenario: Add a new Restaurant
    When I add a new Restaurant
    Then I should see that Restaurant listed

  Scenario: Edit a Restaurant
    Given I have a Restaurant
    When I edit that Restaurant
    Then I should see the changes in the list of Restaurants
