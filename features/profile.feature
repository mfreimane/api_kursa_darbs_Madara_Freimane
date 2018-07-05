Feature: Profile feature
  Profile - add/edit user information

  Background:
    Given I have logged in as a regular user
    Then I have access to my profile information

  @changed_user
  Scenario: Edit profile information - positive
    And I change firstName and lastName
    Then I have access to my profile information
    And I return the data to its original state
    Then I have access to my profile information