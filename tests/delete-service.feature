Feature: Delete Services

	Scenario: Delete Service
		Given user is logged in
		And user is on list services page
		When clicks on delete service
		And service was created by the user
		Then service should be deleted
		And updated list service page should be displayed

	Scenario: User has no permission to delete
		Given user is logged in
		And user is on list services page
		When clicks on delete service
		Then service should be not deleted
		And error page should be displayed