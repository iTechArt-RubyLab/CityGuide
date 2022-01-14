# == Schema Information
#
# Table name: places
#
#  id              :bigint           not null, primary key
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#
FactoryBot.define do
  factory :place do
    name { "MyString" }
    latitude { "9.99" }
    longitude { "9.99" }
  end
end
