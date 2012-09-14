Feature: Content Management
  As an administrator
  In order to expand on the original restaurants
  I want to be able to add/modify Restaurants

  Scenario: Logging in
    Given I am logged in as an admin
    And I am on the dashboard
    Then I should be on the dashboard
