# == Schema Information
#
# Table name: profiles
#
#  id            :bigint           not null, primary key
#  birthday      :date
#  email_address :string
#  name          :string
#  note          :text
#  phone_number  :string
#  surname       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
