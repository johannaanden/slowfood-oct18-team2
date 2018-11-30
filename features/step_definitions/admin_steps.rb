Given("the owner exists") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("owner has logged in") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'odin@norsegod.com'
        And I fill in "Password" with 'oneeye111'
        And I click 'Log in'
    }
  end
  