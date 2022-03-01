# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('positions/edit', type: :view) do
  before do
    @position = assign(:position, Position.create!(
                                    member_id: 1,
                                    position_name: 'MyString'
                                  )
    )
  end

  # it "renders the edit position form" do
  #   render

  #   # assert_select "form[action=?][method=?]", position_path(@position), "post" do

  #   #   assert_select "input[name=?]", "position[member_id]"

  #   #   assert_select "input[name=?]", "position[position_name]"
  #   # end
  # end
end
