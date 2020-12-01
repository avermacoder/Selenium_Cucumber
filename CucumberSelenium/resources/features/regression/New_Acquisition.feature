Feature: In order to provide service to new customer
  As a CenturyLink Care user
  I should be able to create new accounts and submit order for the desired product

  @Pending
  Scenario: A new customer from LC territory calls care agent to buy a product (New Acquisition flow), New Acq, Care and Retention agents for now
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from LC market on the call
    Then I should be able to create a new account for the customer
    And I should be able to place an order using the legacy system

  @Pending
  Scenario: A new customer from LQ territory calls care agent to buy a product (New Acquisition flow), New Acq, Care and Retention agents for now
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from LQ market on the call
    Then I should be able to create a new account for the customer
    And I should be able to place an order using the legacy system

  @Pending
  Scenario: A new customer from LC territory calls eshop enabled care agent to buy a product (New Acquisition flow using eShop)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from LC market on the call
    Then I should be able to create a new account for the customer
    And I should be able to place an order using eshop

  @Pending
  Scenario: A new customer from LQ territory calls eshop enabled care agent to buy a product (New Acquisition flow using eShop)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a new customer from LQ market on the call
    Then I should be able to create a new account for the customer
    And I should be able to place an order using eshop