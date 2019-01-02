When("I have logged in as owner") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'odin@norsegod.com'
        And I fill in "Password" with 'oneeye111'
        And I click on 'Log in'
    }
  end

Then("I should be on product page") do
    expect(current_path).to eq product_path(@product)
end

When("I choose {string} in {string}") do |option, selection|
    select(option, from: `product.#{selection}`)
end

Then("I should not see {string}") do |word|
    expect(page).to have_no_content word
end  