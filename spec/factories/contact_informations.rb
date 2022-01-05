# == Schema Information
#
# Table name: contact_informations
#
#  id             :bigint           not null, primary key
#  address        :string
#  email_address  :string
#  messenger_link :string
#  phone_number   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :contact_information do
    email_address { 'MyString' }
    address { 'MyString' }
    messenger_link { 'MyString' }
  end
end
