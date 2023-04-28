FactoryBot.define do
  factory :product do
    name { "MyString" }
    identifier { "MyString" }
    quantity { 1 }
    price { "9.99" }
    instructions { "MyText" }
    category { nil }
  end
end
