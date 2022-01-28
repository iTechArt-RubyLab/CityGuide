class Route < ApplicationRecord
  belongs_to :tour_agency
  belongs_to :user
  belongs_to :hotel
  belongs_to :place
end
