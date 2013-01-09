Feature: Competitions
	As the boss
	I want to manage competitions
	In order to improve my organization

	Scenario: Team enters a competitions with no questions
		Given I have a competition with no questions
		When a team enters the competition
		Then I should see an error

	Scenario: team enters a competition with questions
		
