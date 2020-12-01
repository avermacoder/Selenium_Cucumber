Feature: In order to answer the customer about their product questions
  As a CenturyLink Care user
  I should be able to view all the necessary information about the products

  @Completed @LCC-4467
  Scenario: A Legacy CenturyLink customer calls care agent for existing product related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with BAN as "310221860" who has questions on the products
    When I view the product summary details of the customer
    Then I should see that the product summary details are same as in Simon

  @Pending @LCC-4468
  Scenario: A Legacy Qwest customer calls care agent for existing product related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "BAN" as "310221860" who has questions on the products
    When I view the product summary details of the customer
    Then I should see that the product summary details are same as in CPlus