FactoryBot.define do
  factory :moray_comment do
    user { nil }
    moray { nil }
    body { "MyText" }
    image { "MyString" }
  end
end
