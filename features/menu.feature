Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
    | starter | main  | dessert   |
    | salad   | pizza | ice cream |

    Scenario: When I enter the site I should see a menu
        Given I visit the site
        Then I should see 'salad'
        And I should see 'pizza'
        And I should see 'ice cream'