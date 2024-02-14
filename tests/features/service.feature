@Service  @DuckDuckGo
Feature: DuckDuckGo Search API
  As an application developer,
  I want to get instant answers for search terms via a REST API,
  So that my app can get answers anywhere.

  Scenario Outline: Basic DuckDuckGo API Search
    Given the DuckDuckGo API is queried with "<phrase>"
    Then the response status code is "200"
    And the response contains results for "<phrase>"

    Examples: Animals
      | phrase  |
      | panda   |
      | python  |
      | polar bear  |

    Examples: Fruit
      | phrase  |
      | apple   |
      | pear    |
      | orange  |
