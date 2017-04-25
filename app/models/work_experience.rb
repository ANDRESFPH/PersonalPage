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

class WorkExperience < ApplicationRecord
  has_many :bullet_points

  validates :company_name, :job_title, :start_date, presence: true
end
