# == Schema Information
#
# Table name: routes
#
#  id                :bigint           not null, primary key
#  cost              :decimal(, )
#  end_date          :date
#  mode_of_transport :string
#  start_date        :date
#  status            :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  hotel_id          :bigint           not null
#  tour_agency_id    :bigint           not null
#  visitor_id        :bigint           not null
#
# Indexes
#
#  index_routes_on_hotel_id        (hotel_id)
#  index_routes_on_tour_agency_id  (tour_agency_id)
#  index_routes_on_visitor_id      (visitor_id)
#
# Foreign Keys
#
#  fk_rails_...  (hotel_id => organizations.id)
#  fk_rails_...  (tour_agency_id => organizations.id)
#  fk_rails_...  (visitor_id => users.id)
#
FactoryBot.define do
  factory :route do
    association :hotel, factory: :organization
    association :visitor, factory: :user
    start_date { Faker::Time.between(from: DateTime.now, to: DateTime.now + 3) }
    end_date { Faker::Time.between(from: start_date, to: DateTime.now + 4) }
    cost { Faker::Number.within(range: 0.0..1000.0) }
    mode_of_transport { 'DRIVING' }
    association :tour_agency, factory: :organization
    trait :invalid_start_date do
      start_date { Faker::Time.between(from: DateTime.now - 4, to: DateTime.now - 1) }
    end
    trait :invalid_end_date do
      end_date { Faker::Time.between(from: DateTime.now - 4, to: DateTime.now - 1) }
    end
    trait :invalid_negative_cost do
      cost { Faker::Number.within(range: -10..-1) }
    end
    trait :invalid_big_cost do
      cost { Faker::Number.within(range: 1001..2000) }
    end
  end
end
