When("I have logged in as owner") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'odin@norsegod.com'
        And I fill in "Password" with 'oneeye111'
        And I click on 'Log in'
    }
  end
  