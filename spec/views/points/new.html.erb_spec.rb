# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('points/new', type: :view) do
  before do
    assign(:point, Point.new(
                     member_id: 1,
                     event_id: 1
                   )
    )
  end

  it 'renders new point form' do
    render
  end
end
