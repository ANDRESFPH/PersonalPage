# == Schema Information
#
# Table name: languages
#
#  id         :uuid             not null, primary key
#  name       :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ApplicationRecord
  validates :name, presence: true
end
