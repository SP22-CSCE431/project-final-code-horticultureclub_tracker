# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('points/index', type: :view) do
  before do
    assign(:points, [
      Point.create!(
        member_id: 2,
        event_id: 3,
        points: 4
      ),
      Point.create!(
        member_id: 2,
        event_id: 3,
        points: 4
      )
    ]
    )
  end
end
