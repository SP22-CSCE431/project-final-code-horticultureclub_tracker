require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
        event_type: "Meeting",
        start_date: "2022-02-11",
        description: "Monthly Meeting",
        points: 10
    ))
  end
end
