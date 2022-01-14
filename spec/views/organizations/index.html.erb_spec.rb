require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        title: "Title",
        min_price: 2.5,
        min_time: 3,
        price_one_hour: 4.5,
        price_two_hours: 5.5,
        type_of_services: 6,
        status: 7
      ),
      Organization.create!(
        title: "Title",
        min_price: 2.5,
        min_time: 3,
        price_one_hour: 4.5,
        price_two_hours: 5.5,
        type_of_services: 6,
        status: 7
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
  end
end
