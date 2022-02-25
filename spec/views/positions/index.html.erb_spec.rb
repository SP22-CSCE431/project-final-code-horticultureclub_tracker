# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('positions/index', type: :view) do
  before do
    assign(:positions, [
      Position.create!(
        member_id: 2,
        position_name: 'Position Name'
      ),
      Position.create!(
        member_id: 2,
        position_name: 'Position Name'
      )
    ]
    )
  end

  # it "renders a list of positions" do
  #   render
  #   # assert_select "tr>td", text: 2.to_s, count: 2
  #   # assert_select "tr>td", text: "Position Name".to_s, count: 2
  # end
end
