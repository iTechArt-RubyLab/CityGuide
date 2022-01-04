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
class ContactInformation < ApplicationRecord
    has_one :entity_profile
    has_one :human_profile
end
