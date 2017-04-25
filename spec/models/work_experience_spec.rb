# == Schema Information
#
# Table name: work_experiences
#
#  id           :uuid             not null, primary key
#  company_name :string
#  job_title    :string
#  start_date   :datetime
#  end_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :uuid
#

require 'rails_helper'

RSpec.describe WorkExperience, type: :model do
  let(:user)            { create :user }
  let(:work_experience) { build(:work_experience, user: user) }
  describe :validations do
    context 'success' do
      it 'is valid when the company name, job title and start date are present' do
        expect(work_experience).to be_valid
      end
    end

    context 'fails' do
      it 'when company name, job title and start date are not present' do
        work_experience.company_name = nil
        work_experience.job_title = nil
        work_experience.start_date = nil

        expect(work_experience).not_to be_valid
        expect(work_experience.errors).to include(:company_name)
        expect(work_experience.errors).to include(:job_title)
        expect(work_experience.errors).to include(:start_date)
      end
    end
  end

  describe :associations do
    context 'Fails' do
      it 'when the user is not present' do
        work_experience.user = nil
        expect(work_experience).not_to be_valid
      end
    end

    context 'Succes' do
      it 'when the user is present' do
        expect(work_experience).to be_valid
        expect(work_experience.errors).to be_empty
      end
    end
  end
end
