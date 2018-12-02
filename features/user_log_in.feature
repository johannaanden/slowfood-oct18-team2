Feature: User can log in and out

    As a user
    in order to access my account
    I would like to be able to log in

    As a visitor,
    In order to navigate the products
    I would like to see the products sorted in categories

    Background: 
        Given the following user exists
        | email          | password  | password_confirmation |
        | Don@trump.com  | maga2020  | maga2020              |
        And I visit login page

    Scenario: User can log in [Happy-path]
        When I fill in 'Email' with 'Don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click on 'Log in'
        Then I see 'Signed in successfully.'

    Scenario: User fills in the login form incorrectly [Sad-path]
        When I click on 'Log in'
        Then I see 'Invalid Email or password.'