# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/new', type: :view) do
  before do
    assign(:event, Event.new(
                     event_type: 'Meeting',
                     start_date: '2022-02-11',
                     description: 'Monthly Meeting',
                     points: 10
                   )
    )
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
      assert_select 'input[name=?]', 'event[event_type]'

      assert_select 'input[name=?]', 'event[description]'
    end
  end
end
