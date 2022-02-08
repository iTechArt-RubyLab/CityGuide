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
class Route < ApplicationRecord
  belongs_to :tour_agency, class_name: 'Organization'
  belongs_to :visitor, class_name: 'User'
  belongs_to :hotel, class_name: 'Organization'
  has_and_belongs_to_many :places
  validates_date :start_date, on_or_after: -> { Date.current }
  validates_date :end_date, on_or_after: :start_date
  enum status: %i[pending approved]
  before_create do
    self.cost = calculate_cost
  end

  def calculate_cost
    sum = tour_agency.min_price + hotel.min_price
    places.map { |place| sum += place.organization.min_price }
    sum.round(2)
  end
end
