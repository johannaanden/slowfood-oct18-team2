Feature: User registration

    As a user,
    In order to have be able to finalise an order
    I would like to be able to register an account

Scenario: User registration [Happy path]
    Given I am on user registration page
    And I fill in "Email" with "johanna@gmail.com"
    And I fill in "Password" with "password123"
    And I fill in "Password confirmation" with "password123"
    And I click "Sign up"
    Then I am on landing page
    And I see "User succesfully created" alert