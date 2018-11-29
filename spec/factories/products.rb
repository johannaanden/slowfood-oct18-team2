FactoryBot.define do
  factory :product do
    name { 'pizza' }
    description { 'good pizza' }
    price { '80' }
    category { 'starter' }
  end
end
