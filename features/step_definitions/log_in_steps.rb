Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I visit login page") do
    visit new_user_session_path
end