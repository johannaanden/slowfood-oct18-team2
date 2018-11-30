Feature: Visitor can add to order 

    As a visitor,
    In order to select products I want to buy
    I would like to be able to add products to an order

    Background:
        | email          | password  | password_confirmation |
        | Don@trump.com  | maga2020  | maga2020              |

    Scenario: User adds a product
        Given I visit the site
        Then show me the page
        And I click 'Login'
        And I fill in 'Email' with 'Don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click 'Login'
        Then I should see '0 items'