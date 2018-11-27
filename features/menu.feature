Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
        Given the following products exists
            | name            | description                            | price |
            | green salad     | fresh lettuce, tomato and cheese       | 50    |
            | pizza           | cheese, pinapple and ham               | 100   |

    Scenario: When I enter the site I should see a menu
        Given I visit the site
        Then I should see 'green salad'
        And I should see 'fresh lettuce, tomato and cheese'
        And I should see '50'