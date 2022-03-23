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
end
