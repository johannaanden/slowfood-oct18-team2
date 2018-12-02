When("I have logged in as owner") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'odin@norsegod.com'
        And I fill in "Password" with 'oneeye111'
        And I click on 'Log in'
    }
  end

Then("I should be on product page") do
    # binding.pry
    expect(current_path).to eq product_path(@product)
    # visit product_path(product)
end

When("I choose {string} in {string}") do |option, selection|
    # find(:select, "product[category_id]").first(:option, "Starter").select_option
    find(:css, "Category").find(:option, option).select_option
        # find(:css, css_selector).find(:option, value).select_option
end
  