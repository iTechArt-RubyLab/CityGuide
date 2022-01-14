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
class Profile < ApplicationRecord
  belongs_to :user
end
