FactoryBot.define do
  factory :section do
    name { "MyString" }
    description { "MyText" }
    position { 1 }
    course { nil }
  end
end
