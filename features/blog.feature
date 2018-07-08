Feature: Blog feature
  This feature is used to test the blog functionality

  Background:
    Given I have logged in as a regular user
    Then I have access to my profile information

  Scenario: Edit another User blog post
    When I find another User blog post id: 168
    And I update another User blog post
