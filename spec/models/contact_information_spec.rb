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
require 'rails_helper'

RSpec.describe ContactInformation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
