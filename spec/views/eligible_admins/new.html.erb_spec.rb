require 'rails_helper'

RSpec.describe "eligible_admins/new", type: :view do
  before(:each) do
    assign(:eligible_admin, EligibleAdmin.new(
      email: "MyString"
    ))
  end

  it "renders new eligible_admin form" do
    render

    assert_select "form[action=?][method=?]", eligible_admins_path, "post" do

      assert_select "input[name=?]", "eligible_admin[email]"
    end
  end
end
