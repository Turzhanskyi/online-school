FactoryBot.define do
  factory :course do
    name { "MyString" }
    description { "MyText" }
    teacher { nil }
    discipline { nil }
  end
end
