# == Schema Information
#
# Table name: human_profiles
#
#  id           :bigint           not null, primary key
#  age          :date
#  contact_info :text
#  name         :string
#  note         :text
#  surname      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class HumanProfile < ApplicationRecord
  has_one :user, as: :profilable
  belongs_to :contact_information
end
