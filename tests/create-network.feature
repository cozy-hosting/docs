Feature: Create Network

	Scenario: Create Network
		Given user is logged in
		And user is on list network page
		When user clicks create new network
		Then the network form should be displayed
		When the user fills out the form 
		Then clicks on okay
		Then network should be setup
		And updated list service page should be displayed