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
require 'rails_helper'

RSpec.describe Profile, type: :model do
  subject(:profile) { create :profile }

  context 'with valid data' do
    it { expect(profile).to be_valid }
  end

  describe '#name' do
    context 'when name short' do
      subject(:invalid_short_name) { build :profile, :invalid_short_name }
      it { expect(invalid_short_name).not_to be_valid }
    end

    context 'when name long' do
      subject(:invalid_long_name) { build :profile, :invalid_long_name }
      it { expect(invalid_long_name).not_to be_valid }
    end

    context 'when name consist not only letters' do
      subject(:invalid_alpha_name) { build :profile, :invalid_alpha_name }
      it { expect(invalid_alpha_name).not_to be_valid }
    end
  end

  describe '#surname' do
    context 'when surname short' do
      subject(:invalid_short_surname) { build :profile, :invalid_short_surname }
      it { expect(invalid_short_surname).not_to be_valid }
    end

    context 'when surname long' do
      subject(:invalid_long_surname) { build :profile, :invalid_long_surname }
      it { expect(invalid_long_surname).not_to be_valid }
    end

    context 'when surname consist not only letters' do
      subject(:invalid_alpha_surname) { build :profile, :invalid_alpha_surname }
      it { expect(invalid_alpha_surname).not_to be_valid }
    end
  end

  describe '#birthday' do
    context 'when year small' do
      subject(:invalid_small_year) { build :profile, :invalid_small_year }
      it { expect(invalid_small_year).not_to be_valid }
    end
  end

  describe '#note' do
    context 'when note short' do
      subject(:invalid_short_note) { build :profile, :invalid_short_note }
      it { expect(invalid_short_note).not_to be_valid }
    end

    context 'when note long' do
      subject(:invalid_long_note) { build :profile, :invalid_long_note }
      it { expect(invalid_long_note).not_to be_valid }
    end
  end

  describe '#number' do
    context 'when number format wrong' do
      subject(:invalid_format_number) { build :profile, :invalid_format_number }
      it { expect(invalid_format_number).not_to be_valid }
    end
  end
end
