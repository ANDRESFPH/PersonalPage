# == Schema Information
#
# Table name: educations
#
#  id              :uuid             not null, primary key
#  university_name :string
#  start_date      :datetime
#  end_date        :datetime
#  title           :string
#  degree          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :uuid
#

require 'rails_helper'

RSpec.describe Study, type: :model do
  let(:user)  { create :user }
  let(:study) { build(:study, user: user) }

  describe :validations do
    context 'Fails' do
      it 'raises an error when university name, start_date, title and degree are not present' do
        study.university_name = nil
        study.start_date = nil
        study.title = nil
        study.degree = nil

        expect(study).not_to be_valid
        expect(study.errors).to include(:university_name)
        expect(study.errors).to include(:start_date)
        expect(study.errors).to include(:title)
        expect(study.errors).to include(:degree)
      end
    end

    context 'Success' do
      it 'is valid when university name, start_date, title and degree are present' do
        expect(study).to be_valid
      end
    end
  end

  describe :associations do
    context 'Fails' do
      it 'when the usesr is not present' do
        study.user = nil
        expect(study).not_to be_valid
      end
    end

    context 'Succes' do
      it 'when the user is present' do
        expect(study).to be_valid
        expect(study.errors).to be_empty
      end
    end
  end
end
