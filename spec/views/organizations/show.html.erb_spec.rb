require 'rails_helper'

RSpec.describe "organizations/show", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      title: "Title",
      min_price: 2.5,
      min_time: 3,
      price_one_hour: 4.5,
      price_two_hours: 5.5,
      type_of_services: 6,
      status: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
