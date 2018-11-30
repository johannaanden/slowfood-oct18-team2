Then('I am on users page') do
    expect(current_path).to eq user_registration_path
end

<<<<<<< HEAD
Then("I see {string}") do |content|
=======
Then('I see {string}') do |content|
>>>>>>> 62dc54648e6011c0d6161cec86822c9925aa0487
    expect(page).to have_content content
end

Then('I am on landing page') do
    expect(current_path).to eq root_path
end

<<<<<<< HEAD
Then('show me the page') do
    save_and_open_page
=======
Then('I should see the logo') do
    expect(page).to have_css '#logo'
end

Then('I should see {string}') do |word|
    expect(page).to have_content word
>>>>>>> 62dc54648e6011c0d6161cec86822c9925aa0487
end