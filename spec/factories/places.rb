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
    name { Faker::Lorem.characters(number: 20, min_alpha: 10) }
    latitude { Faker::Number.within(range: 0.0..100.0) }
    longitude { Faker::Number.within(range: 0.0..100.0) }
    association :organization

    trait :invalid_short_name do
      name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end
    trait :invalid_long_name do
      name { Faker::Lorem.characters(number: 60, min_alpha: 30) }
    end
    trait :invalid_small_latitude do
      latitude { Faker::Number.within(range: -10..-1) }
    end
    trait :invalid_long_latitude do
      latitude { Faker::Number.within(range: 100.1..120.0) }
    end
    trait :invalid_small_longtitude do
      longitude { Faker::Number.within(range: -10..-1) }
    end
    trait :invalid_long_longtitude do
      longitude { Faker::Number.within(range: 101..120.1) }
    end
  end
end
