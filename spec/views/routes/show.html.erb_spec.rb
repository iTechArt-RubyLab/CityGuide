require 'rails_helper'

RSpec.describe 'routes/show', type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
                              tour_agency: nil,
                              user: nil,
                              hotel: nil,
                              cost: '9.99',
                              place: nil
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
