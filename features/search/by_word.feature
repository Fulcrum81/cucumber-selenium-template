@search
Feature: Search

  Background:
    Given I am on the home page
    When I choose english language

  Scenario: Search by word
    When I fill in "Ruby" to the search field
    And I start search
    Then I should see "Ruby is a dynamic, reflective, object-oriented"

  Scenario: No matches
    When I fill in "kahjsdasdjlkjasd" to the search field
    And I start search
    Then I should see "No results found"
