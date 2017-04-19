# == Schema Information
#
# Table name: bullet_points
#
#  id          :uuid             not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe BulletPoint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
