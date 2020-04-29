Feature: Create Services

	Scenario: Create Service
		Given user is logged in
		And user is on list services page
		When user provides payment
		And user provides a correct service configurations
		When user clicks create new service
		Then service should be setup
		And updated list service page should be displayed

	Scenario: No payment provided
		Given user is logged in
		And user is on list services page
		When user provided no payment method
		When user clicks create new service
		Then user should be redirected to the provide payment page

	Scenario: Configuration is invalid
		Given user is logged in
		And user is on configure service page
		When user provides a incorrect configuration
		And user clicks on create
		Then an error message should be displayed
		And service should not be set up