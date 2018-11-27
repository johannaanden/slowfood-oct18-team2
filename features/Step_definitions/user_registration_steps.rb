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
    expect(current_path).to eq root_path
end

Then("I am on users page") do
    # binding.pry
    expect(current_path).to eq user_registration_path
end
  
Then("I see {string} alert") do |content|
    expect(page).to have_content content
end