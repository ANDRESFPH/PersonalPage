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

require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:user) { create :user }
  let(:skill) { build(:skill, user: user) }
  describe :validations do
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

  describe :associations do
    context 'Fails' do
      it 'when the user is not present' do
        skill.user = nil
        expect(skill).not_to be_valid
        expect(skill.errors).to include(:user)
      end
    end
  end
end
