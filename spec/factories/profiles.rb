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
    name { "MyString" }
    surname { "MyString" }
    birthday { "2022-01-13" }
    note { "MyText" }
    phone_number { "MyString" }
    email_address { "MyString" }
    user { nil }
  end
end
