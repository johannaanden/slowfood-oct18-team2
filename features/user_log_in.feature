Feature: User can log in and out

    As a user
    in order to access my account
    I would like to be able to log in

    Background: 
        Given the following user exists
        | email          | password  | password_confirmation |
        | Don@trump.com  | maga2020  | maga2020              |
        And I visit login page

    Scenario: User can log in [Happy-path]
        When I fill in 'email' field with 'Don@trump.com'
        And I fill in 'password' field with 'maga2020'
        And I click 'Log in'
        Then I should see 'Welcome!'