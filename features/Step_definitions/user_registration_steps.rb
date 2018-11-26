Given("I am on user registration page") do
    visit new_user_path
end
  
Given("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end
  
Given("I click {string}") do |element|
    click_on element
end
  
Then("I am on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Then("I see {string} alert") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end