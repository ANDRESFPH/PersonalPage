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
  describe 'validations' do
    let(:bullet_point) { build(:bullet_point) }
    context 'Fails' do
      it 'raises an error when description is nil' do
        bullet_point.description = nil
        expect(bullet_point).not_to be_valid
      end
    end

    context 'Success' do
      it 'is valid when description is not nil' do
        expect(bullet_point).to be_valid
      end
    end
  end
end
