Given("I am on user registration page") do
    visit new_user_registration_path
end
  
Given("I fill in {string} with {string}") do |element, value|
    fill_in element, with: value
end
  
Given("I click {string}") do |element|
    click_on element
end
  
Then("I am on landing page") do
    visit root_path
end
  
Then("I see {string} alert") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end