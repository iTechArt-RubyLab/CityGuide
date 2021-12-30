# == Schema Information
#
# Table name: entity_profiles
#
#  id              :bigint           not null, primary key
#  min_price       :float
#  min_time        :time
#  price_one_hour  :float
#  price_two_hours :float
#  time_work       :integer
#  title_company   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class EntityProfile < ApplicationRecord
  has_many :users, as: :profilable
end
