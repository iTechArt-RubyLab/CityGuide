# == Schema Information
#
# Table name: entity_profiles
#
#  id                     :bigint           not null, primary key
#  age                    :date
#  end_work               :time
#  min_price              :float
#  min_time               :integer
#  name                   :string
#  note                   :text
#  price_one_hour         :float
#  price_two_hours        :float
#  start_work             :time
#  surname                :string
#  title_company          :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  contact_information_id :bigint
#
# Indexes
#
#  index_entity_profiles_on_contact_information_id  (contact_information_id)
#
class EntityProfile < ApplicationRecord
  has_many :users, as: :profilable
  belongs_to :contact_information
end
