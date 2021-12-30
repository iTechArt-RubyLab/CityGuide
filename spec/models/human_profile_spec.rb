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
require 'rails_helper'

RSpec.describe HumanProfile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
