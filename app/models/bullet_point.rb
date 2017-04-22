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

class BulletPoint < ApplicationRecord
  belongs_to :work_experience

  validates :description, presence: true
end
