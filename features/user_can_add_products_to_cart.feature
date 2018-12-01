@javascript

Feature: Visitor can add to order 

    As a visitor,
    In order to select products I want to buy
    I would like to be able to add products to an order

    Background:
    Given the following user exists
        | email          | password  | password_confirmation |
        | Don@trump.com  | maga2020  | maga2020              |

    Given the following categories exist
        | category |
        | Main     |
        | Dessert  |
        | Starter  | 

    And the following products exists
        | name            | description               | price | category |
        | pizza           | cheese, pinapple and ham  | 100   | Main     |
    
    And I have logged in

    Scenario: User adds a product
        Then I should see 'pizza'
        And I should see '100'
        And I click on 'Add to Cart'
        Then I should see '1 item'