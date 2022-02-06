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
FactoryBot.define do
  factory :organization do
    title { Faker::Lorem.characters(number: 20, min_alpha: 15) }
    min_price { Faker::Number.within(range: 0.0..1000.0) }
    min_time { Faker::Number.within(range: 0..2000) }
    price_one_hour { Faker::Number.within(range: 0.0..1000.0) }
    price_two_hours { Faker::Number.within(range: 0.0..1000.0) }
    start_work { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    end_work { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    type_of_services { 1 }
    status { 1 }
    association :user

    trait :invalid_short_title do
      title { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end
    trait :invalid_long_title do
      title { Faker::Lorem.characters(number: 80, min_alpha: 60, min_numeric: 10) }
    end
    trait :negative_min_price do
      min_price { Faker::Number.within(range: -10..-1) }
    end
    trait :big_min_price do
      min_price { Faker::Number.within(range: 1001..2000) }
    end
    trait :negative_price_one_hour do
      price_one_hour { Faker::Number.within(range: -10..-1) }
    end
    trait :big_price_one_hour do
      price_one_hour { Faker::Number.within(range: 1001..2000) }
    end
    trait :negative_price_two_hours do
      price_two_hours { Faker::Number.within(range: -10..-1) }
    end
    trait :big_price_two_hours do
      price_two_hours { Faker::Number.within(range: 1001..2000) }
    end
  end
end
