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
#  organization_id :bigint
#
# Indexes
#
#  index_places_on_organization_id  (organization_id)
#
FactoryBot.define do
  factory :place do
    name { "MyString" }
    latitude { "9.99" }
    longitude { "9.99" }
    organization { nil }
  end
end
