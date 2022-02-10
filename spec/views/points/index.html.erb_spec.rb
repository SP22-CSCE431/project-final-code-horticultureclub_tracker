require 'rails_helper'

RSpec.describe "points/index", type: :view do
  before(:each) do
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
    ])
  end

  it "renders a list of points" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
