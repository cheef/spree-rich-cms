Feature: as admin I want to see the list of existing pages
  Scenario: go to the pages list
    Given a user exists
    When I log in as the user
    And I go to the admin pages
    Then I should see empty pages list
    And I see button to add a new page