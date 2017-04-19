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

require 'rails_helper'

RSpec.describe Language, type: :model do
  describe 'validations' do
    let(:language) { build(:language) }
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
end
