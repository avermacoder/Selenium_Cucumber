Feature: In order to fix the incorrect or changed communication preferences of the customer
  As a CenturyLink Care user
  I should be able to change the communication preferences information

  @Completed @LCC-4471
  Scenario: A Legacy CenturyLink customer calls care agent for updating communication preferences
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LC" customer on call with BAN as "402558298" who wants to update communication preferences
    When I modify the communication preferences info to opt in for all mobile and email options
    Then I should see the communication preference changes within salesforce
    Then I should see that the communication preference changes are reflected in Simon
    When I modify the communication preferences info to opt out of all mobile and email options
    Then I should see the communication preference changes within salesforce
    Then I should see that the communication preference changes are reflected in Simon

  @Completed @Partial_Env @LCC-4472
  Scenario: A Legacy Qwest customer calls care agent for updating communication preferences
    Given I am a CenturyLink "care" user logged in to salesforce
    And I have a verified "LQ" customer on call with BAN as "303-948-8998 559" who wants to update communication preferences
    When I modify the communication preferences info to opt in for all mobile and email options
    Then I should see the communication preference changes within salesforce
    #Then I should see the communication preference changes reflected in backend system --No backend connectivity
    When I modify the communication preferences info to opt out of all mobile and email options
    Then I should see the communication preference changes within salesforce
    #Then I should see the communication preference changes reflected in backend system --No backend connectivity