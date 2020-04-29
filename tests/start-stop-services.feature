Feature: Start/stop services

	Scenario: Start/stop service
		Given user is logged in
		And user is on list services page
		When user clicks start/stop container
		And container is in the right requested state
		Then service should started/stopped
		And confirmation notification should be displayed

	Scenario: Container is in the wrong state
		Given user is logged in
		And user is on list services page
		When user clicks start/stop container
		And container is in the wrong state
		Then error should be displayed