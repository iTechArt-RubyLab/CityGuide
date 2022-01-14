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
#
FactoryBot.define do
  factory :organization do
    title { "MyString" }
    min_price { 1.5 }
    min_time { 1 }
    price_one_hour { 1.5 }
    price_two_hours { 1.5 }
    start_work { "2022-01-14 22:10:09" }
    end_work { "2022-01-14 22:10:09" }
    type_of_services { 1 }
    status { 1 }
  end
end
