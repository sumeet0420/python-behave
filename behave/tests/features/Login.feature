@chrome @firefox
Feature: Testing the login functionality

@smoke 
Scenario: Test the browser
	Given I have launched the browser
	Then I should be able to launch the homepage

@parametertest
Scenario: Test the parameters
	Given I have launched the browser
	Then I navigate to the "qa" site

@regression
Scenario: Test the parameters
	Given I have launched the browser
	Then I navigate to the "dev" site

@regression
Scenario Outline: Running the test multiple times
	Given I have launched the browser
	Then I navigate to the "<type>" site

	Examples: A sample example to run the scenario with multiple data (DDT)
	|type|
	|first|
	|second|
	|third|

@regression
Scenario: Test the parameters
	Given I have launched the browser
	Then I login for the user
	|username|password|
	|user_1|12345678|