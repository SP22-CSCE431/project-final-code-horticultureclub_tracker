require 'rails_helper'

RSpec.describe "positions/index", type: :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        member_id: 2,
        position_name: "Position Name"
      ),
      Position.create!(
        member_id: 2,
        position_name: "Position Name"
      )
    ])
  end

end
