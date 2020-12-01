Feature: In order to get additional revenue to the company
  As a CenturyLink Care user
  I should be able to order new products for an existing CenturyLink customer

  @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for adding a new product (Ordering)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who wants to order new product
    Then I should be able to launch the ordering system with the necessary info passed
    And I should be able to add new product interaction log and close the account

  @Pending
  Scenario: A Legacy Qwest customer calls care agent for adding a new product (Ordering)
    Given I am a CenturyLink "retention" user logged in to salesforce
    When I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who wants to order new product
    Then I should be able to launch the ordering system with the necessary info passed
    And I should be able to add new product interaction log and close the account