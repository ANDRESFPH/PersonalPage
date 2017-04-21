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
#

require 'rails_helper'

RSpec.describe Education, type: :model do
  let(:education) { build(:education) }

  context 'Fails' do
    it 'raises an error when university name is not present' do
      education.university_name = nil
      expect(education).not_to be_valid
    end

    it 'is not valid when the education start_date is not present' do
      education.start_date = nil
      expect(education).not_to be_valid
    end

    it 'is not valid when the education title is not present' do
      education.title = nil
      expect(education).not_to be_valid
    end

    it 'is not valid when the education degree is not present' do
      education.degree = nil
      expect(education).not_to be_valid
    end
  end

  context 'Success' do
    it 'is valid when university name is present' do
      expect(education).to be_valid
    end

    it 'is valid when start_date present' do
      expect(education).to be_valid
    end

    it 'is valid when title present' do
      expect(education).to be_valid
    end

    it 'is valid when degree present' do
      expect(education).to be_valid
    end
  end
end
