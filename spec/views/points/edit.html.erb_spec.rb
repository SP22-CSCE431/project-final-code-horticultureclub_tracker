require 'rails_helper'

RSpec.describe "points/edit", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      member_id: 1,
      event_id: 1,
      points: 1
    ))
  end

  it "renders the edit point form" do
    render

    
  end
end
