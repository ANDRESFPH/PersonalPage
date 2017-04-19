FactoryGirl.define do
  factory :bullet_point do
    description { Faker::ChuckNorris.fact }
  end
end
