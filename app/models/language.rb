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

class Language < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true
end
