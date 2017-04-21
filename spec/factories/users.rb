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

FactoryGirl.define do
  factory :user do
    first_name    { Faker::Superhero.name }
    last_name     { Faker::Superhero.suffix }
    email         { Faker::Internet.email(first_name) }
    date_of_birth { Date.today - 20.years }
  end
end
