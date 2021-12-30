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
require 'rails_helper'

RSpec.describe EntityProfile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
