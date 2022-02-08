require 'rails_helper'

RSpec.describe 'routes/new', type: :view do
  before(:each) do
    assign(:route, Route.new(
                     tour_agency: nil,
                     user: nil,
                     hotel: nil,
                     cost: '9.99',
                     place: nil
                   ))
  end

  it 'renders new route form' do
    render

    assert_select 'form[action=?][method=?]', routes_path, 'post' do
      assert_select 'input[name=?]', 'route[tour_agency_id]'

      assert_select 'input[name=?]', 'route[user_id]'

      assert_select 'input[name=?]', 'route[hotel_id]'

      assert_select 'input[name=?]', 'route[cost]'

      assert_select 'input[name=?]', 'route[place_id]'
    end
  end
end
