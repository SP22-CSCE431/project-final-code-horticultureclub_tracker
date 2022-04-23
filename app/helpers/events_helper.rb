# frozen_string_literal: true

module EventsHelper
  def format_time(time)
    time.utc.strftime('%l:%M %p')
  end

  def show_both_times(start, end_t)
    "#{start.strftime('%l:%M %p')} - #{end_t.strftime('%l:%M %p')}"
  end
end
