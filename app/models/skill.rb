# == Schema Information
#
# Table name: skills
#
#  id         :uuid             not null, primary key
#  name       :string
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid
#

class Skill < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true
  validates :level, inclusion: { in: (1..10) }
end
