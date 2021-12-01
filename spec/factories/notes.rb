FactoryBot.define do
  factory :note do
    fact        {Faker::Lorem.sentence}
    association :user
  end
end