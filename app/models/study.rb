# == Schema Information
#
# Table name: studies
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

class Study < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :university_name, presence: true
  validates :start_date, presence: true
  validates :title, presence: true
  validates :degree, presence: true
end
