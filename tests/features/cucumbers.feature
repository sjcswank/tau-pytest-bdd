Feature: Cucumber Basket
  As a gardener,
  I want to carry cucumbers in a basket,
  So that I don't drop them all.


  Scenario Outline: Add cucumbers to a basket
    Given the basket has "<initial>" cucumbers
    When "<some>" cucumbers are added to the basket
    Then the basket contains "<total>" cucumbers

    Examples: Amounts
    | initial   | some  | total |
    | 2         | 4     | 6     |
    | 8         | 2     | 10    |
    | 6         | 1     | 7     |


  Scenario Outline: Remove cucumbers from a basket
    Given the basket has "<initial>" cucumbers
    When "<some>" cucumbers are removed from the basket
    Then the basket contains "<total>" cucumbers

    Examples: Amounts
    | initial | some  | total |
    | 8       | 3     | 5     |
    | 10      | 7     | 3     |
    | 4       | 2     | 2     |
