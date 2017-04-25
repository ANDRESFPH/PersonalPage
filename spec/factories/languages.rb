# == Schema Information
#
# Table name: languages
#
#  id         :uuid             not null, primary key
#  name       :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid
#

FactoryGirl.define do
  factory :language do
    name  'English'
    level 'A1'
  end
end
