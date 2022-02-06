# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  is_admin               :boolean
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  provider               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  uid                    :string
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'testadmin' }
    password_confirmation { 'testadmin' }
    reset_password_token { nil }
    reset_password_sent_at { nil }
    remember_created_at { nil }
    sign_in_count { 1 }
    current_sign_in_at { '2015-02-06 14:02:10' }
    last_sign_in_at { '2015-02-06 14:02:10' }
    current_sign_in_ip { Faker::Internet.ip_v4_address }
    last_sign_in_ip { Faker::Internet.ip_v4_address }
    confirmed_at { Time.now.utc }
  end
end
