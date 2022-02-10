require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      member_id: 1,
      event_id: 1,
      points: 1
    ))
  end

  it "renders new point form" do
    render

    assert_select "form[action=?][method=?]", points_path, "post" do

      assert_select "input[name=?]", "point[member_id]"

      assert_select "input[name=?]", "point[event_id]"

      assert_select "input[name=?]", "point[points]"
    end
  end
end
