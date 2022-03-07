require 'rails_helper'

RSpec.describe "eligible_admins/edit", type: :view do
  before(:each) do
    @eligible_admin = assign(:eligible_admin, EligibleAdmin.create!(
      email: "MyString"
    ))
  end

  it "renders the edit eligible_admin form" do
    render

    assert_select "form[action=?][method=?]", eligible_admin_path(@eligible_admin), "post" do

      assert_select "input[name=?]", "eligible_admin[email]"
    end
  end
end
