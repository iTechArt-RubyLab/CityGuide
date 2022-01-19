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
#  user_id          :integer
#
class Organization < ApplicationRecord
  belongs_to :user
  has_one :place
  accepts_nested_attributes_for :place
  enum type_of_services: %i[museum excursion transport hotel restaurant theatre entertainment]
  enum status: %i[pending rejected approved archived]
  validates_format_of :title, with: /^[a-zA-Z]+$/, multiline: true
  validates :min_price, :price_one_hour, :price_two_hours, numericality: { greater_than_or_equal_to: 0 }
end
