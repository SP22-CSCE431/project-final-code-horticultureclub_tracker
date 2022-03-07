require 'rails_helper'

RSpec.describe "eligible_admins/show", type: :view do
  before(:each) do
    @eligible_admin = assign(:eligible_admin, EligibleAdmin.create!(
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
  end
end
