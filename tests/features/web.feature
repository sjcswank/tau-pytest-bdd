Feature: DuckDuckGo Web Browsing
  As a user
  I want to find information online
  so I can get things done

  Background:
    Given the DuckDcukGo homepage is displayed


  Scenario: Basic DuckDuckGo search
    When a user searches for "panda"
    Then results for "panda" are displayed


  Scenario: Lengthy DuckDuckGo search
    When a user searches for the phrase:
      """When in the Course of human events, it becomes necessary for one people
      to dissolve the political bands which have connected them with another,
      and to assume among the powers of the earth, the separate and equal
      station to which the Laws of Nature and of Nature's God entitle them,
      a decent respect to the opinions of mankind requires that they should
      declare the causes which impel them to the separation."""
    Then one of the results contains "Declaration of Independence"