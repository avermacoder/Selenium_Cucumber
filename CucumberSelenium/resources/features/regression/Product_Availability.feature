Feature: In order to inform customer about additional products available at the service address
  As a CenturyLink Care user
  I should be able to view available products at the service address in C360 Panel and Service Address detail that matches with the backend system

  @Pending
  Scenario: A Legacy CenturyLink customer calls care agent for adding a new product (Ordering)
    Given I am a CenturyLink "care" user logged in to salesforce
    When I have a verified "LC" customer on call with "Name" as "Ramu Vairavan" who wants to know about available products
    Then I should be able to view the available products in the dashboard
    And I should be able to view the max available speed for HSI with and without Prism
    And I should see that the product availability info matches with the backend system
    When I navigate to service address detail view
    Then I should be able to view the available products in the service address detail section
    And I should be able to view the max available speed for HSI with and without Prism in service address detail section
    And I should see that the product availability info matches with the backend system

  @Pending
  Scenario: A Legacy Qwest customer calls care agent for adding a new product (Ordering)
    Given I am a CenturyLink "retention" user logged in to salesforce
    When I have a verified "LQ" customer on call with "Name" as "Ramu Vairavan" who wants to know about available products
    Then I should be able to view the available products in the dashboard
    And I should be able to view the max available speed for HSI with and without Prism
    And I should see that the product availability info matches with the backend system
    When I navigate to service address detail view
    Then I should be able to view the available products in the service address detail section
    And I should be able to view the max available speed for HSI with and without Prism in service address detail section
    And I should see that the product availability info matches with the backend system