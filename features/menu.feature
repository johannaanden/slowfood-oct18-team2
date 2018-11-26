Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
        Given the following products exists
            | name            | description                            | price |
            | green salad     | fresh lettuce, tomato and cheese       | 50    |
            | pasta carbonara | pasta with some delicious cheese sauce | 102   |
            | ice cream       | vanilla with chocolate sauce           | 105   |
            

    Scenario: When I enter the site I should see a menu
        Given I visit the site
        Then I should see 'green salad'
        And I should see 'fresh lettuce, tomato and cheese'
        And I should see '50'
        And I should see 'pasta carbonara'
        And I should see 'pasta with some delicious cheese sauce'
        And I should see '102'
        And I should see 'ice cream'
        And I should see 'vanilla with chocolate sauce'
        And I should see '105'