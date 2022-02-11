require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      event_type: "Meeting",
      start_date: "2022-02-11",
      description: "Monthly Meeting",
      points: 10
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[event_type]"

      assert_select "input[name=?]", "event[description]"
    end
  end
end
