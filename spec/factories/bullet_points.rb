# == Schema Information
#
# Table name: bullet_points
#
#  id                 :uuid             not null, primary key
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  work_experience_id :uuid
#

FactoryGirl.define do
  factory :bullet_point do
    description { Faker::ChuckNorris.fact }
  end
end
