require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      name: "MyString",
      surname: "MyString",
      note: "MyText",
      phone_number: "MyString",
      email_address: "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[surname]"

      assert_select "textarea[name=?]", "profile[note]"

      assert_select "input[name=?]", "profile[phone_number]"

      assert_select "input[name=?]", "profile[email_address]"
    end
  end
end
