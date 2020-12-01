Feature: Verify the news article is valid on Guardian News

  Scenario: Verify news article from guardian is valid if found after google search
    Given I have opened the guardian news portal
    When I try to validate the news authenticity on google
    Then I should see the news is valid

  Scenario: Verify news article from guardian is invalid if not found after google search
    Given I have opened the guardian news portal
    When I try to validate the news authenticity on google
    Then I should see the news is invalid

  Scenario: Verify news article from guardian is valid if found on other big news portals
    Given I have opened the guardian news portal
    When I try to validate the news authenticity on other big news portal
    Then I should see the news is valid

  Scenario: Verify news article from guardian is invalid if not found on other big news portals
    Given I have opened the guardian news portal
    When I try to validate the news authenticity on other big news portal
    Then I should see the news is invalid
