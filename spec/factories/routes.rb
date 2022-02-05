# == Schema Information
#
# Table name: routes
#
#  id                :bigint           not null, primary key
#  cost              :decimal(, )
#  end_date          :date
#  mode_of_transport :string
#  start_date        :date
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
    tour_agency { nil }
    user { nil }
    start_date { "2022-01-28" }
    start_end { "2022-01-28" }
    hotel { nil }
    cost { "9.99" }
    place { nil }
  end
end
