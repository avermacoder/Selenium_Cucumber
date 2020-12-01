Feature: In order to retain the customer from leaving CenturyLink
  As a CenturyLink Retention user
  I should be able to provide best available offers to the customer

  @Pending
  Scenario: A Legacy CenturyLink customer calls retention agent to disconnect the service and is provided with new offers (PEGA)
    Given I am a CenturyLink "retention" user logged in to salesforce
    When I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who wants to leave CenturyLink
    Then I should be able to provide best available offers to the customer
    When Customer accepts any one of the offer
    Then I should be able to submit an order for the same offer
    When I have clarified all the customer questions
    Then I should be able to add customer retained interaction log and close the account

  @Pending
  Scenario: A Legacy Qwest customer calls retention agent to disconnect the service and is provided with offers (PEGA)
    Given I am a CenturyLink "retention" user logged in to salesforce
    When I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who wants to leave CenturyLink
    Then I should be able to provide best available offers to the customer
    When Customer accepts any one of the offer
    Then I should be able to submit an order for the same offer
    When I have clarified all the customer questions
    Then I should be able to add customer retained interaction log and close the account