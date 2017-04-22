# == Schema Information
#
# Table name: bullet_points
#
#  id                 :uuid             not null, primary key
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  work_experience_id :uuid
#

require 'rails_helper'

RSpec.describe BulletPoint, type: :model do
  let(:work_experience) { create :work_experience }
  let(:bullet_point) { build(:bullet_point, work_experience: work_experience) }
  describe :validations do
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

  describe :associations do
    let(:bullet_points) { build(:bullet_point) }
    context 'fails' do
      it 'when the bullet point is not associated with a work experience' do
        expect(bullet_points).not_to be_valid
        expect(bullet_points.errors).to include(:work_experience)
      end
    end
  end
end
