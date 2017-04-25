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

FactoryGirl.define do
  factory :skill do
    name 'ruby'
    level 1
  end
end
