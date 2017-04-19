# == Schema Information
#
# Table name: bullet_points
#
#  id          :uuid             not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BulletPoint < ApplicationRecord
end
