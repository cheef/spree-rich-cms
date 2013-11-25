Feature: as admin I want to edit existing pages
  Scenario: go to the edit form of existing page
    Given a user exists
    And a page exists
    When I log in as the user
    And I go to the edit admin page
    Then I should see page form
    When I fill page title with "Foo"
    And I click button to save changes
    Then I should see that page successfully saved
    And a page should exist with title: "Foo"