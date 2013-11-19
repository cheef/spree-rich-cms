Feature: as admin I want create pages
  Scenario: create new page
    Given a user exists
    When I log in as the user
    And I go to the new admin page
    Then I should see page form
    When I fill page title with "Foo"
    And I click button to save page
    Then I should see that page successfully saved
    And a page should exist with title: "Foo"