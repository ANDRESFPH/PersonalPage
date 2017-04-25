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

require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:user)     { create :user }
  let(:language) { build(:language, user: user) }
  describe :validations do
    context 'Fails' do
      it 'raises an error when name is nil' do
        language.name = nil
        expect(language).not_to be_valid
      end
    end

    context 'Success' do
      it 'is valid when name is not nil' do
        expect(language).to be_valid
      end
    end
  end

  describe :associations do
    context 'Fails' do
      it 'when the user is not present' do
        language.user = nil
        expect(language).not_to be_valid
        expect(language.errors).to include(:user)
      end
    end

    context 'Success' do
      it 'when the user is present' do
        expect(language).to be_valid
        expect(language.errors).to be_empty
      end
    end
  end
end
