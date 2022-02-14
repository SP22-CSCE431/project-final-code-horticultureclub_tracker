require 'rails_helper'

RSpec.describe "positions/edit", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      member_id: 1,
      position_name: "MyString"
    ))
  end

  it "renders the edit position form" do
    render

  end
end
