require 'faker'

Category.create(category: "Starter") 
Category.create(category: "Main")
Category.create(category: "Dessert")

Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 1)
Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 2)
Product.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.between(100, 300), category_id: 3)

User.create(email: 'don@wh.se',password:'dondon111',owner: true)