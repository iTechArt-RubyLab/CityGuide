# == Schema Information
#
# Table name: places
#
#  id              :bigint           not null, primary key
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#
# Indexes
#
#  index_places_on_organization_id  (organization_id)
#
require 'rails_helper'

RSpec.describe Place, type: :model do
  subject(:place) { create :place }

  context 'with valid data' do
    it { expect(place).to be_valid }
  end
  describe '#name' do
    context 'when name short' do
      subject(:invalid_short_name) { build :place, :invalid_short_name }
      it { expect(invalid_short_name).not_to be_valid }
    end

    context 'when name long' do
      subject(:invalid_long_name) { build :place, :invalid_long_name }
      it { expect(invalid_long_name).not_to be_valid }
    end
  end

  describe '#latitude' do
    context 'when latitude small' do
      subject(:invalid_small_latitude) { build :place, :invalid_small_latitude }
      it { expect(invalid_small_latitude).not_to be_valid }
    end

    context 'when latitude long' do
      subject(:invalid_long_latitude) { build :place, :invalid_long_latitude }
      it { expect(invalid_long_latitude).not_to be_valid }
    end
  end

  describe '#longtitude' do
    context 'when longtitude small' do
      subject(:invalid_small_longtitude) { build :place, :invalid_small_longtitude }
      it { expect(invalid_small_longtitude).not_to be_valid }
    end

    context 'when longtitude long' do
      subject(:invalid_long_longtitude) { build :place, :invalid_long_longtitude }
      it { expect(invalid_long_longtitude).not_to be_valid }
    end
  end
end
