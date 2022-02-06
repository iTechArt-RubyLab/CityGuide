# == Schema Information
#
# Table name: profiles
#
#  id            :bigint           not null, primary key
#  birthday      :date
#  email_address :string
#  name          :string
#  note          :text
#  phone_number  :string
#  surname       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
FactoryBot.define do
  factory :profile do
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }
    surname { Faker::Lorem.characters(number: 10, min_alpha: 10) }
    birthday { Faker::Time.between(from: '1960-09-23', to: '2003-09-23') }
    note { Faker::Lorem.characters(number: 40, min_alpha: 10) }
    phone_number { '333-333-3333' }
    email_address { Faker::Internet.email }
    association :user

    trait :invalid_short_name do
      name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end
    trait :invalid_long_name do
      name { Faker::Lorem.characters(number: 30, min_alpha: 30) }
    end
    trait :invalid_alpha_name do
      name { Faker::Lorem.characters(number: 10, min_alpha: 2, min_numeric: 6) }
    end
    trait :invalid_long_surname do
      surname { Faker::Lorem.characters(number: 30, min_alpha: 30) }
    end
    trait :invalid_short_surname do
      surname { Faker::Lorem.characters(number: 2, min_alpha: 2) }
    end
    trait :invalid_alpha_surname do
      surname { Faker::Lorem.characters(number: 10, min_alpha: 2, min_numeric: 6) }
    end
    trait :invalid_small_year do
      birthday { Faker::Time.between(from: '2005-09-23', to: '2021-09-23') }
    end
    trait :invalid_short_note do
      note { Faker::Lorem.characters(number: 2, min_alpha: 2) }
    end
    trait :invalid_long_note do
      note { Faker::Lorem.characters(number: 150, min_alpha: 100) }
    end
    trait :invalid_format_number do
      phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
    end
  end
end
