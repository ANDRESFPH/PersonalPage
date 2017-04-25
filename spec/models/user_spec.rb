# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  first_name             :string
#  last_name              :string
#  date_of_birth          :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe :validations do
    let(:user) { build :user }
    context 'success' do
      it 'is valid when the first_name, email and password are present' do
        user.password = 'holita20'
        expect(user).to be_valid
      end
    end

    context 'fails' do
      it 'when the first name, email and password are empty' do
        user.first_name = nil
        user.email = nil
        user.password = nil
        expect(user).not_to be_valid
        expect(user.errors).to include(:first_name)
        expect(user.errors).to include(:email)
        expect(user.errors).to include(:password)
      end
    end
  end
end
