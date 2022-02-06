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
class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  validates_format_of :name, with: /^[a-zA-Z]+$/, multiline: true
  validates :name, length: { in: 3..20 }
  validates_format_of :surname, with: /^[a-zA-Z]+$/, multiline: true
  validates :surname, length: { in: 3..20 }
  validates_each :birthday do |record, attr, value|
    if value > Date.new((Date.today.year -
      18), Date.today.month, Date.today.day)
      record.errors.add attr, "is not a valid date. You must be at
    least 18 years old."
    end
  end
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :note, length: { in: 5..100 }, allow_blank: true
  validates_format_of :phone_number,
                      with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
                      message: '- Phone numbers must be in xxx-xxx-xxxx format.'
end
