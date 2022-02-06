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
require 'rails_helper'

RSpec.describe Organization, type: :model do
  subject(:organization) { create :organization }

  context 'with valid data' do
    it { expect(organization).to be_valid }
  end

  describe '#title' do
    context 'when title short' do
      subject(:invalid_short_title) { build :organization, :invalid_short_title }
      it { expect(invalid_short_title).not_to be_valid }
    end

    context 'when title long' do
      subject(:invalid_long_title) { build :organization, :invalid_long_title }
      it { expect(invalid_long_title).not_to be_valid }
    end

    describe '#min_price' do
      context 'when min price negative' do
        subject(:negative_min_price) { build :organization, :negative_min_price }
        it { expect(negative_min_price).not_to be_valid }
      end

      context 'when min price big' do
        subject(:big_min_price) { build :organization, :big_min_price }
        it { expect(big_min_price).not_to be_valid }
      end
    end
  end

  describe '#price_one_hour' do
    context 'when price of one hour short' do
      subject(:negative_price_one_hour) { build :organization, :negative_price_one_hour }
      it { expect(negative_price_one_hour).not_to be_valid }
    end

    context 'when price of one hour big' do
      subject(:big_price_one_hour) { build :organization, :big_price_one_hour }
      it { expect(big_price_one_hour).not_to be_valid }
    end
  end

  describe '#price_two_hours' do
    context 'when price of two hours short' do
      subject(:negative_price_two_hours) { build :organization, :negative_price_two_hours }
      it { expect(negative_price_two_hours).not_to be_valid }
    end

    context 'when price of two hours big' do
      subject(:big_price_two_hours) { build :organization, :big_price_two_hours }
      it { expect(big_price_two_hours).not_to be_valid }
    end
  end
end
