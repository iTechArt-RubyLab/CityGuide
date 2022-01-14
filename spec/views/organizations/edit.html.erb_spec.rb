require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      title: "MyString",
      min_price: 1.5,
      min_time: 1,
      price_one_hour: 1.5,
      price_two_hours: 1.5,
      type_of_services: 1,
      status: 1
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input[name=?]", "organization[title]"

      assert_select "input[name=?]", "organization[min_price]"

      assert_select "input[name=?]", "organization[min_time]"

      assert_select "input[name=?]", "organization[price_one_hour]"

      assert_select "input[name=?]", "organization[price_two_hours]"

      assert_select "input[name=?]", "organization[type_of_services]"

      assert_select "input[name=?]", "organization[status]"
    end
  end
end
