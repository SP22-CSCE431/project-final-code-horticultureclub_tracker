# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('members/show', type: :view) do
  before do
    @member = assign(:member, Member.create!(
                                name: 'Name'
                              )
    )
  end

  
end
