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
require 'rails_helper'

RSpec.describe HumanProfile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
