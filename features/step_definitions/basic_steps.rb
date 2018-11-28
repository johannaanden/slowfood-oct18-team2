Given('I visit the site') do
    visit root_path
end

Given('the following products exists') do |table|
    table.hashes.each do |product|
        FactoryBot.create(:product, product)
    end
end

Then('I should see {string}') do |meal|
    expect(page).to have_content meal
end