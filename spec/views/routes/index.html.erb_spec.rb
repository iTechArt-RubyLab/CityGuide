require 'rails_helper'

RSpec.describe 'routes/index', type: :view do
  before(:each) do
    assign(:routes, [
             Route.create!(
               tour_agency: nil,
               user: nil,
               hotel: nil,
               cost: '9.99',
               place: nil
             ),
             Route.create!(
               tour_agency: nil,
               user: nil,
               hotel: nil,
               cost: '9.99',
               place: nil
             )
           ])
  end

  it 'renders a list of routes' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
