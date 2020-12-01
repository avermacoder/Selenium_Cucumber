Feature: In order to fix the incorrect billing by CenturyLink system
  As a CenturyLink Care user
  I should be able to provide adjustments on the customer bill

  @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for an adjustment within the agent's limit
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who is looking for adjustments due to incorrect billing
    When I view the bill for "LC" customer
    And I determine that the billed amount is incorrect and i need to provide adjustment
    Then I should be able to submit adjustments on LC customer bill
    And I should be able to view the adjustment details in salesforce
    And I need to ensure that the adjusted amount is reflected in the LC billing system
    When I have clarified all the customer questions
    Then I should be able to add adjustments interaction log and close the account

  @Pending
  Scenario: A Legacy Qwest customer calls care agent for an adjustment within the agent's limit
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who is looking for adjustments due to incorrect billing
    When I view the bill for "LQ" customer
    And I determine that the billed amount is incorrect and i need to provide adjustment
    Then I should be able to submit adjustments on LQ customer bill
    And I should be able to view the adjustment details in salesforce
    #And I need to ensure that the adjusted amount is reflected in the LQ billing system -- No backend connectivity
    When I have clarified all the customer questions
    Then I should be able to add adjustments interaction log and close the account
