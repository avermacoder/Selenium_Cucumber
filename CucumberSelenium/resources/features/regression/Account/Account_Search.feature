Feature: In order to receive a call from CenturyLink customer
		 As a CenturyLink Care User
		 I should be able to search for the accounts in SFC

@LC @LQ
Scenario: Verify that an account can be searched and opened using Name
	Given I am a Centurylink "care" user
	When I login to salesforce consumer application
	Then I should be able to open the account with "Name" as "Ramu Vairavan"
	
@LC @LQ
Scenario: Verify that an account can be searched and opened using BAN
	Given I am a Centurylink "care" user
	When I login to salesforce consumer application
	Then I should be able to open the account with "BAN" as "303-948-8998 559"