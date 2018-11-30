require 'faker'

Category.create(category: "Starter") 
Category.create(category: "Main")
Category.create(category: "Dessert")

3.times do
    Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 1)
end

3.times do
    Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 2)
end

3.times do
    Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 3)
end