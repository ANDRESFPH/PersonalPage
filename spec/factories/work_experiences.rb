# == Schema Information
#
# Table name: work_experiences
#
#  id           :uuid             not null, primary key
#  company_name :string
#  job_title    :string
#  start_date   :datetime
#  end_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :work_experience do
    company_name { Faker::Company.name }
    job_title    { Faker::Job.title }
    start_date   { Date.today }
    end_date     { 1.year.from_now }
  end
end
