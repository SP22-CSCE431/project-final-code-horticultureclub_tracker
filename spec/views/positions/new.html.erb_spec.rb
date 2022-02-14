require 'rails_helper'

RSpec.describe "positions/new", type: :view do
  before(:each) do
    assign(:position, Position.new(
      member_id: 1,
      position_name: "MyString"
    ))
  end

  it "renders new position form" do
    render

  end
end
