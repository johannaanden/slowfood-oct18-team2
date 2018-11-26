Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
        Given the following products exists
            | name            | description                      | price |
            | pasta alfredo   | pasta with some delicious        | 100   |
            | pasta carbonara | pasta with some delicious cheese | 102   |
            | pizza           | hawaiian pizza                   | 105   |
            | lasagna         | meat lasagna                     | 110   |

    Scenario: When I enter the site I should see a menu
        Given I visit the site
        Then I should see 'pasta alfredo'
        And I should see 'pasta with some delicious'
        And I should see '100'