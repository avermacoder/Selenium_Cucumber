Feature: In order to answer the customer about their deposit history questions
  As a CenturyLink Care user
  I should be able to view all the necessary information about the deposit history

  @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for an adjustment within the agent's limit
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who has questions about their deposit history
    When I view the deposit history for "LC" customer
    Then I should see that the deposit history details are same as in LC backend system
    When I have clarified all the customer questions
    Then I should be able to add deposit history interaction log and close the account

  @Pending
  Scenario: A Legacy Qwest customer calls care agent regarding deposit history
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who has questions about their deposit history
    When I view the deposit history for "LQ" customer
    Then I should see that the deposit history details are same as in LQ backend system
    When I have clarified all the customer questions
    Then I should be able to add deposit history interaction log and close the account