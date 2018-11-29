Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
        Given the following products exists
            | name            | description                            | price | category |
            | green salad     | fresh lettuce, tomato and cheese       | 50    | starter  |
            | pizza           | cheese, pinapple and ham               | 100   | main     |
            | ice cream       | strawberry                             | 50    | dessert  |

    Scenario: When I enter the site I should see a menu
        Given I visit the site
        Then I see 'green salad'
        And I see 'fresh lettuce, tomato and cheese'
        And I see '50'
    
    Scenario: User can navigate the products
        Given I am on the landing page
        Then I see "Todays menu"
        And I see "Starter"
        And I see "Main"
        And I see "Dessert"