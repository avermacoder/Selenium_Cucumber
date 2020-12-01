Feature: In order to answer the customer about their billing questions
  As a CenturyLink Care user
  I should be able to view all the necessary information about the bills

  @LQ @Pending
  Scenario: A Legacy Qwest customer calls care agent for current and past bill related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who has questions on 6 month old bill
    When I view the bill for "LQ" customer
    Then I should see that the most recent bill opens up by default
    And I should see that the bill details are same as in LQ backend system
    And I should see that the bill is in "HTML" format for "LQ" customer
    When I view the bill for "LQ" customer that is 6 months old
    Then I should see the bill details that is 6 months old for "LQ" customer
    When I have clarified all the customer questions
    Then I should be able to add billing interaction log and close the account

  @LC @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for current and past bill related questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who has questions on 6 month old bill
    When I view the bill for "LC" customer
    Then I should see that the most recent bill opens up by default
    And I should see that the bill details are same as in LC backend system
    And I should see that the bill is in "PDF" format for "LC" customer
    When I view the bill for "LC" customer that is 6 months old
    Then I should see the bill details that is 6 months old for "LC" customer
    When I have clarified all the customer questions
    Then I should be able to add billing interaction log and close the account

  @LQ @Pending
  Scenario: A Legacy Qwest customer calls care agent for comparing one of the bills with other bills
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who has questions compared to his past bills
    When I compare the bills for the customer
    Then I should see that the 3 most recent bills are compared by default
    And I should see that the bill details are same as in LQ backend system
    And I should see that any decrease and increase in amount should be displayed in green and red font
    When I compare the past month bill with 18 months old bill
    Then I should see that the details of past month and 18 month old bill are displayed
    When I compare past 4 months bill
    Then I should see an error "Please Select 2 or 3 Bills to Compare." in bill comparison
    When I have clarified all the customer questions
    Then I should be able to add billing interaction log and close the account

  @LC
  Scenario: A Legacy CenturyLink customer calls care agent for comparing one of the bills with other bills
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "ELLA E SMITH" who has questions compared to his past bills
    When I compare the bills for the customer
    #Then I should see that the 3 most recent bills are compared by default
    And I should see that the bill details are same as in LC backend system
    And I should see that any decrease and increase in amount should be displayed in green and red font
    When I compare the past month bill with 18 months old bill
    Then I should see that the details of past month and 18 month old bill are displayed
    When I compare past 4 months bill
    Then I should see an error "Please Select 2 or 3 Bills to Compare." in bill comparison
    When I have clarified all the customer questions
    Then I should be able to add billing interaction log and close the account

  @LC @Pending
  Scenario: A Legacy CenturyLink customer calls care agent regarding billing and payment history questions
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who has questions on past billing and payments
    When I view billing and payment history
    Then I should see the past billing and payment details of the customer
    And I should see that the past billing and payment details are same as in LC backend system
    When I have clarified all the customer questions
    Then I should be able to add billing and payments interaction log and close the account

  @LC @Pending
  Scenario: A Legacy Qwest customer calls care agent regarding billing and payment history
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who has questions on past billing and payments
    When I view billing and payment history
    Then I should see the past billing and payment details of the customer
    And I should see that the past billing and payment details are same as in LQ backend system
    When I have clarified all the customer questions
    Then I should be able to add billing and payments interaction log and close the account

  @LC @Pending
  Scenario: A Legacy CenturyLink customer calls care agent to request bill reprint
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" with invoice billing and needs bill reprint
    When I try to request bill reprint
    Then I should see a bill reprint message ""
    When I submit the bill reprint successfully
    Then I should see the bill reprint request in the backend system
    And I should see that the past billing and payment details are same as in LC backend system
    When I have clarified all the customer questions
    Then I should be able to add bill reprint interaction log and close the account

  @LC @Pending
  Scenario: A Legacy Qwest customer calls care agent to request bill reprint
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" with invoice billing and needs bill reprint
    When I try to request bill reprint
    Then I should see a bill reprint message ""
    When I submit the bill reprint successfully
    Then I should see the bill reprint request in the backend system
    And I should see that the past billing and payment details are same as in LC backend system
    When I have clarified all the customer questions
    Then I should be able to add bill reprint interaction log and close the account
