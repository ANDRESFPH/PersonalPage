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
  belongs_to :user
  validates :name, presence: true
  validates :level, inclusion: { in: (1..10) }
end
