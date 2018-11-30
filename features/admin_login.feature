Feature: Admin Log in 

    As a restaurant owner,
    In order to be able to keep the information about my restaurant up to date
    I would like to be able to log in to the system as a restaurant owner

    Background: Owner exists already
    
        Given the following user exists
        | email              | password  | password_confirmation |
        | odin@norsegod.com  | oneeye111 | oneeye111             |
        
        And I visit login page

    Scenario: Owner can log in to the system
        When owner has logged in
        Then I see "Today's Menu"
        And I see "Starter"
        And I see "Main"
        And I see "Dessert"