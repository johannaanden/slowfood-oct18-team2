FactoryBot.define do
  factory :user do
    email { "johanna@gmail.com" }
    password { "1234567890" }
    owner { true }
  end
end
