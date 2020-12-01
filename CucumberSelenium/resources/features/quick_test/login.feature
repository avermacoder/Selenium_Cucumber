Feature: Login to Salesforce Consumer Application

	Scenario: Successful Login
		Given I am a Centurylink "care" user
		When I login to salesforce consumer application
		Then I should be logged in successfully