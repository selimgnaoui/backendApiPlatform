# This file contains a user story for demonstration only.
# Learn how to get started with Behat and BDD on Behat's website:
# http://behat.org/en/latest/quick_start.html

Feature: Books feature
    @fixtures
    Scenario: Get one task
        When I add "Content-Type" header equal to "application/json"
        And I add "Accept" header equal to "application/json"
        And I send a "GET" request to "/api/tasks/5"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON nodes should contain:
            | id                   | 5              |
            | name                  | Task 5      |


    Scenario: Post new Task
        When I add "Content-Type" header equal to "application/json"
        And I add "Accept" header equal to "application/json"

        And I send a "POST" request to "/api/tasks" with body:
        """
    {

    "name": "John",
    "done": true,
    "type": "Meeting"
    }
        """
        Then the response status code should be 201
        And the response should be in JSON
        And the JSON nodes should contain:
            | name                   | John              |
            | type                   | Meeting      |

