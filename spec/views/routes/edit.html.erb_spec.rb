require 'rails_helper'

RSpec.describe "routes/edit", type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      tour_agency: nil,
      user: nil,
      hotel: nil,
      cost: "9.99",
      place: nil
    ))
  end

  it "renders the edit route form" do
    render

    assert_select "form[action=?][method=?]", route_path(@route), "post" do

      assert_select "input[name=?]", "route[tour_agency_id]"

      assert_select "input[name=?]", "route[user_id]"

      assert_select "input[name=?]", "route[hotel_id]"

      assert_select "input[name=?]", "route[cost]"

      assert_select "input[name=?]", "route[place_id]"
    end
  end
end
