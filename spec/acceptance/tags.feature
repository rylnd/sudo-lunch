Feature: Tags

  Scenario: Browsing Restaurants by Tag
    Given I have a Restaurant tagged with 'vegan'
    And I have a Restaurant tagged with 'meat, vegan'
    When I am on the random page
    And I click 'vegan'
    Then I should be at the tags page for 'vegan'
    And I should see the tag 'vegan' on the restaurant's page
