# == Schema Information
#
# Table name: skills
#
#  id         :uuid             not null, primary key
#  name       :string
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe 'validations' do
    let(:skill) { build(:skill) }
    context 'Fails' do
      it 'raises an error when name is nil' do
        skill.name = nil
        expect(skill).not_to be_valid
      end

      it 'is not valid when the skill level is not between 1 and 10' do
        skill.level = 11
        expect(skill).not_to be_valid
      end
    end

    context 'Success' do
      it 'is valid when name is not nil and level is between 1 and 10' do
        expect(skill).to be_valid
      end
    end
  end
end
