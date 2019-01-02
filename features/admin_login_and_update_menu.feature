Feature: Admin Log in 

    As a restaurant owner,
    In order to be able to keep the information about my restaurant up to date
    I would like to be able to log in to the system as a restaurant owner

    As a restaurant owner,
    In order to keep my customers up to date regarding my products
    I would like to be able to make updates to my menu

    Background: Owner exists already
        Given the following categories exist
            | category |
            | Main     |
            | Dessert  |
            | Starter  | 

        And the following products exists
            | name            | description                            | price | category |
            | green salad     | fresh lettuce, tomato and cheese       | 50    | Starter  |
            | pizza           | cheese, pinapple and ham               | 100   | Main     |
            | ice cream       | strawberry                             | 50    | Dessert  |
    
        And the following user exists
            | email              | password  | password_confirmation | owner |
            | odin@norsegod.com  | oneeye111 | oneeye111             | true  |
        
        And I visit login page

    Scenario: Owner can log in to the system
        When I have logged in as owner
        Then I see "Welcome owner!"

    Scenario: Owner can update product
        Given I have logged in as owner
        When I click on "Edit green salad"
        And I fill in "Name" with "Tomato salad"
        And I fill in "Description" with "Tomato and cheese"
        And I fill in "Price" with "75"
        And I click on "Update product"
        Then I should see "Tomato salad"
        And I should see "Tomato and cheese"
        And I see "75"

    Scenario: Owner can create a product
        Given I have logged in as owner
        When I click on "Create Product"
        And I fill in "Name" with "Boiled pig eyes"
        And I fill in "Description" with "raw pig eyes, but boiled"
        And I fill in "Price" with "249"
        And I choose "Starter" in "Category"
        And I click on "Create product"
        Then I should see "Boiled pig eyes"
    
    Scenario: Owner can delete a product
        Given I have logged in as owner
        When I click on "Delete green salad"
        Then I should not see "green salad"
