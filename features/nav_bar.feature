Feature: User can navigate the site
    As a visitor,
    In order to navigate the site
    I would like to use a navbar

    Scenario: User can see navbar
        Given I visit the site
        Then I should see the logo
        And I should see 'Check out'
        And I should see 'Order total:'
        And I should see 'Login'
        And I should see 'Sign up'