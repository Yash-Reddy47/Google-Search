Feature: Search for duck in Google

  Scenario Outline:
    Given I have a google page opened
    When I search for '<input>' in the search box
    Then  The page should contain tile as '<input>'

    Examples:
      | input |
      | DUCK  |