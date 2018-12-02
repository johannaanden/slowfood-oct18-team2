When("I have logged in as owner") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'odin@norsegod.com'
        And I fill in "Password" with 'oneeye111'
        And I click on 'Log in'
    }
  end

Then("I should be on product page") do
    pending # Write code here that turns the phrase above into concrete actions
end

When("I choose {string} in {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end
  