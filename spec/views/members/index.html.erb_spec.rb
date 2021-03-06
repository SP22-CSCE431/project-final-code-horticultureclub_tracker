# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('members/index', type: :view) do
  before do
    assign(:members, [
      Member.create!(
        name: 'Name'
      ),
      Member.create!(
        name: 'Name'
      )
    ]
    )
  end

  it 'renders a list of members' do
    render
  end
end
