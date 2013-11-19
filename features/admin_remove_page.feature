@javascript
Feature: as admin I want to remove pages
  Scenario: remove one of the existing pages
    Given a user exists
    And a page "First" exists
    When I log in as the user
    And I go to the admin pages
    And I click to remove page "First"
    Then I see that page deleted successfully
    And a page "First" should not exist