# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('positions/show', type: :view) do
  before do
    @position = assign(:position, Position.create!(
                                    member_id: 2,
                                    position_name: 'Position Name'
                                  )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/2/))
    expect(rendered).to(match(/Position Name/))
  end
end
