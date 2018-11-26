Given("I am on user registration page") do
    visit new_user_path
end
  
Given("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end
  
Given("I click {string}") do |element|
    click_on element
end
  
Then("I am on landing page") do
    visit user_index_path
end
  
Then("I see {string} alert") do |content|
    page.has_css?('.notice',text: content)
end