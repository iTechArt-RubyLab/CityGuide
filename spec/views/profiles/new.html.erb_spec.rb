require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      name: "MyString",
      surname: "MyString",
      note: "MyText",
      phone_number: "MyString",
      email_address: "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[surname]"

      assert_select "textarea[name=?]", "profile[note]"

      assert_select "input[name=?]", "profile[phone_number]"

      assert_select "input[name=?]", "profile[email_address]"
    end
  end
end
