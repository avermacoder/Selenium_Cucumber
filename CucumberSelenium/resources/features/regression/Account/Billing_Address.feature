Feature: In order to fix the incorrect or changed billing address of the customer
  As a CenturyLink Care user
  I should be able to change the billing address information

  @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for updating billing address
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who wants to update billing address
    When I change billing address of the customer
    Then I should see the change reflected in backend systems
    When I have clarified all the customer questions
    Then I should be able to add billing address interaction log and close the account

  @Pending
  Scenario: A Legacy Qwest customer calls care agent for updating billing address
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who wants to update billing address
    When I change billing address of the customer
    Then I should see the change reflected in backend systems
    When I have clarified all the customer questions
    Then I should be able to add billing address interaction log and close the account