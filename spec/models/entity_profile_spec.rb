# == Schema Information
#
# Table name: entity_profiles
#
#  id              :bigint           not null, primary key
#  age             :date
#  contact_info    :text
#  min_price       :float
#  min_time        :time
#  name            :string
#  note            :text
#  price_one_hour  :float
#  price_two_hours :float
#  surname         :string
#  time_work       :time
#  title_company   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe EntityProfile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
