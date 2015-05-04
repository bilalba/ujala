User story_2: I should be able to see all the workers.
User story_4: If search for a teachers.

Feature: display all the workers with selected tags
	
	In order to find workers
	As a user
	I want to see all the workers in Ujala's database

	Background: workers have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the Ujala home page

  Scenario: all tags selected
  When I press show button
  Then I should see all the workers

  Scenario: restrict to workers with 'painter' or 'carpenter' tags
  When I check the following tags: painter, carpenter
	And I uncheck the following ratings: teacher, driver
	And I press "Refresh"
	Then I should be on the home page
	Then I should see "Amelie"
	Then I should see "Raiders of the Lost Ark"
	Then I should see "The Incredibles"
	Then I should see "The Terminator"
	Then I should see "When Harry Met Sally"
	Then I should not see "Aladdin"
	Then I should not see "Chocolat"
	Then I should not see "The Help"
	Then I should not see "2001: A Space Odyssey"
	Then I should not see "Chicken Run"