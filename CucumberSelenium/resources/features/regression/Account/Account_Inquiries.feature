Feature: In order to answer general account related questions of the customer calling in
		 As a CenturyLink Care User
		 I should be able to view account details in SFC
		
@LC @Pending
Scenario: Verify that the dashboard and account details match with backend systems for LC customer
	Given I am a CenturyLink "care" user logged in to salesforce
	When I have a verified "LC" customer on call with "Name" as "DEWAYNE PHILLIPS" who has general account questions
	Then I should see that the account is locked from closing
#	And I should see that the customer note is added on the account
	And I should see account,billing and products dashboard info and account details info displayed that matches with LC backend system
	When I clarify general account questions and update interaction log
	Then I should see that the interaction log is added as a customer note
	And I should be able to close the account tab successfully
	
@LQ @Pending
Scenario: Verify that the dashboard and account details match with backend systems for LQ customer
	Given I am a CenturyLink "care" user logged in to salesforce
	When I have a verified "LQ" customer on call with "Name" as "RAMU VAIRAVAN" who has general account questions
	Then I should see that the account is locked from closing
	And I should see that the customer note is added on the account
	And I should see account,billing and products dashboard info and account details info displayed that matches with LQ backend system
	When I clarify general account questions and update interaction log
	Then I should see that the interaction log is added as a customer note
	And I should be able to close the account tab successfully