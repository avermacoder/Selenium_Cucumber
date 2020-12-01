@Product_Inquiries
Feature: In order to answer the customer about their product questions
  As a CenturyLink Care user
  I should be able to view all the necessary information about the products

  Scenario: A Legacy CenturyLink customer calls care agent for product related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who has questions on the products
    When I view the product details for "LC" customer
    Then I should see that the product details are same as in LC backend system
    When I have clarified all the customer questions
    Then I should be able to add product interaction log and close the account

  Scenario: A Legacy Qwest customer calls care agent for product related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who has questions on the products
    When I view the product details for "LQ" customer
    Then I should see that the product details are same as in LQ backend system
    When I have clarified all the customer questions
    Then I should be able to add product interaction log and close the account