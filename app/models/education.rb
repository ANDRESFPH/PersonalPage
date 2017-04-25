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
#

class Education < ApplicationRecord
  # Validations
  validates :university_name, presence: true
  validates :start_date, presence: true
  validates :title, presence: true
  validates :degree, presence: true
end
