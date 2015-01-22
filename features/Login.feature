
Feature:Creating new user

Scenario: I want to verify that a new user can be created successfully

		   		  Given I have logged in as a admin user with Username "sanix22@gmail.com" and password "ritu@123"
		   		  And I navigate to Development environment
		   		  And I click on Users
		   		  And I click on Add user		   		  
		   		  And I enter "Auto7","auto7","Auto7@gmail.com","GQ","Automation"
		   		  When I click on create user
		   		  Then new user gets created
		   		  And I click on logout
		   		  

