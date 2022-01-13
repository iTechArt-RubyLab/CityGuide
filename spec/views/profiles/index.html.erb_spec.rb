require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        name: "Name",
        surname: "Surname",
        note: "MyText",
        phone_number: "Phone Number",
        email_address: "Email Address"
      ),
      Profile.create!(
        name: "Name",
        surname: "Surname",
        note: "MyText",
        phone_number: "Phone Number",
        email_address: "Email Address"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Surname".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Email Address".to_s, count: 2
  end
end
