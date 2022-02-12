require 'rails_helper'

RSpec.describe "points/show", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      member_id: 2,
      event_id: 3,
      points: 4
    ))
  end


end
