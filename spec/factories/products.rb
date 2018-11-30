FactoryBot.define do
  factory :product do
    name { 'pizza' }
    description { 'good pizza' }
    price { '80' }
    category { FactoryBot.create(:category) }
  end
end
