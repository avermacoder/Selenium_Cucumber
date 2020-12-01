Feature: In order to verify the credibility of the customer calling in
		 As a CenturyLink Care User
		 I should be able to view verification details of account

@LC @Pending
Scenario: Verify that the dashboard, account verification, communication preferences 
			and customer notes info matches with the backend systems for LCTL customer
	Given I am a CenturyLink "care" user logged in to salesforce
	When I open the account with "BAN" as "303-948-8998 559"
	Then I should see account dashboard info displayed that matches with LC backend system
	And I should see billing dashboard info displayed that matches with LC backend system
	And I should see products dashboard info displayed that matches with LC backend system
	And I should see tags dashboard info displayed that matches with LC backend system
	And I should see account verification info displayed that matches with LC backend systems
	And I should see communication preferences info displayed that matches with LC backend systems
	And I should see customer notes displayed that matches with LC backend systems
	When I open interaction log on the account
	Then I should see a message "Please enter the account before entering a log." in the interaction log section
	
@LQ @Pending
Scenario: Verify that the dashboard, account verification, communication preferences 
			and customer notes info matches with the backend systems for LQ customer
	Given I am a CenturyLink "care" user logged in to salesforce
	When I open the account with "BAN" as "303-948-8998 559"
	Then I should see account dashboard info displayed that matches with LQ backend system
	And I should see billing dashboard info displayed that matches with LQ backend system
	And I should see products dashboard info displayed that matches with LQ backend system
	And I should see tags dashboard info displayed that matches with LQ backend system
	And I should see account verification info displayed that matches with LQ backend systems
	And I should see communication preferences info displayed that matches with LQ backend systems
	And I should see customer notes displayed that matches with LQ backend systems