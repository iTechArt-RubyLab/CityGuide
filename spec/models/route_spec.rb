# == Schema Information
#
# Table name: routes
#
#  id                :bigint           not null, primary key
#  cost              :decimal(, )
#  end_date          :date
#  mode_of_transport :string
#  start_date        :date
#  status            :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  hotel_id          :bigint           not null
#  tour_agency_id    :bigint           not null
#  visitor_id        :bigint           not null
#
# Indexes
#
#  index_routes_on_hotel_id        (hotel_id)
#  index_routes_on_tour_agency_id  (tour_agency_id)
#  index_routes_on_visitor_id      (visitor_id)
#
# Foreign Keys
#
#  fk_rails_...  (hotel_id => organizations.id)
#  fk_rails_...  (tour_agency_id => organizations.id)
#  fk_rails_...  (visitor_id => users.id)
#
require 'rails_helper'

RSpec.describe Route, type: :model do
  subject(:route) { create :route }

  context 'with valid data' do
    it { expect(route).to be_valid }
  end

  describe '#start_date' do
    context 'when start date wrong' do
      subject(:invalid_start_date) { build :route, :invalid_start_date }
      it { expect(invalid_start_date) }
    end
  end
  describe '#end_date' do
    context 'when end date wrong' do
      subject(:invalid_end_date) { build :route, :invalid_end_date }
      it { expect(invalid_end_date) }
    end
  end
  describe '#cost' do
    context 'when cost negative' do
      subject(:invalid_negative_cost) { build :route, :invalid_negative_cost }
      it { expect(invalid_negative_cost) }
    end
    context 'when cost big' do
      subject(:invalid_big_cost) { build :route, :invalid_big_cost }
      it { expect(invalid_big_cost) }
    end
  end
end
