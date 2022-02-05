# == Schema Information
#
# Table name: organizations
#
#  id               :bigint           not null, primary key
#  end_work         :time
#  min_price        :float
#  min_time         :integer
#  price_one_hour   :float
#  price_two_hours  :float
#  start_work       :time
#  status           :integer
#  title            :string
#  type_of_services :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#
# Indexes
#
#  index_organizations_on_user_id  (user_id)
#
class Organization < ApplicationRecord
  belongs_to :user
  has_one :place
  has_one :route
  has_many_attached :images
  accepts_nested_attributes_for :place
  enum type_of_services: %i[museum excursion transport hotel restaurant theatre entertainment tourist_agency]
  enum status: %i[pending rejected approved archived]
  validates :min_price, :price_one_hour, :price_two_hours, numericality: { greater_than_or_equal_to: 0 }
end
