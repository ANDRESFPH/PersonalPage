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
    it 'raises an error when university name, start_date, title and degree are not present' do
      education.university_name = nil
      education.start_date = nil
      education.title = nil
      education.degree = nil

      expect(education).not_to be_valid
      expect(education.errors).to include(:university_name)
      expect(education.errors).to include(:start_date)
      expect(education.errors).to include(:title)
      expect(education.errors).to include(:degree)
    end
  end

  context 'Success' do
    it 'is valid when university name, start_date, title and degree are present' do
      expect(education).to be_valid
    end
  end
end
