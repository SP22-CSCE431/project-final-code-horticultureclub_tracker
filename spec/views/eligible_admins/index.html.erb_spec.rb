require 'rails_helper'

RSpec.describe "eligible_admins/index", type: :view do
  before(:each) do
    assign(:eligible_admins, [
      EligibleAdmin.create!(
        email: "Email"
      ),
      EligibleAdmin.create!(
        email: "Email"
      )
    ])
  end

  it "renders a list of eligible_admins" do
    render
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
