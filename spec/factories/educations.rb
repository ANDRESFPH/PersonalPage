# == Schema Information
#
# Table name: educations
#
#  id              :uuid             not null, primary key
#  university_name :string
#  start_date      :datetime
#  end_date        :datetime
#  title           :string
#  degree          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :uuid
#

FactoryGirl.define do
  factory :education do
    university_name { Faker::Educator.university }
    start_date      { Date.today }
    end_date        { 5.years.from_now }
    title           { Faker::Educator.course }
    degree          { 'Bachelor' }
  end
end
