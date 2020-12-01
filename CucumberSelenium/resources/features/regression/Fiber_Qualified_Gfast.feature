Feature: In order to sell fiber speeds to customer
  As a CenturyLink Care user
  I should be able to see when the fiber speeds are available

  @Pending
  Scenario: An LC customer who has fiber at the service address calls care agent (Gfast for existing)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who needs fiber speeds
    Then I should see that the fiber speeds are available for the customer
    And I should see that the available speeds match with the backend system

  @Pending
  Scenario: An LQ customer who has fiber at the service address calls care agent (Gfast for existing)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who needs fiber speeds
    Then I should see that the fiber speeds are available for the customer
    And I should see that the available speeds match with the backend system

  @Pending
  Scenario: A new customer from LC territory that has fiber at the service address calls care agent to buy a product (Gfast for new)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from fiber enabled LC market on the call
    Then I should be able to create a new account for the customer
    And I should see that the fiber speeds are available for the customer
    And I should see that the available speeds match with the backend system

  @Pending
  Scenario: A new customer from LQ territory that has fiber at the service address calls care agent to buy a product (Gfast for new)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from fiber enabled LQ market on the call
    Then I should be able to create a new account for the customer
    And I should see that the fiber speeds are available for the customer
    And I should see that the available speeds match with the backend system