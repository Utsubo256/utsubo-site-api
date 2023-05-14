FactoryBot.define do
  factory :aquarium_comment do
    user { nil }
    aquarium { nil }
    body { "MyText" }
    image { "MyString" }
    discarded_at { "2023-05-14 02:12:44" }
  end
end
