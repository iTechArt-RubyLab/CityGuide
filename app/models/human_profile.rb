# == Schema Information
#
# Table name: human_profiles
#
#  id                     :bigint           not null, primary key
#  age                    :date
#  name                   :string
#  note                   :text
#  surname                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  contact_information_id :bigint
#
# Indexes
#
#  index_human_profiles_on_contact_information_id  (contact_information_id)
#
class HumanProfile < ApplicationRecord
  has_one :user, as: :profilable
  belongs_to :contact_information
end
