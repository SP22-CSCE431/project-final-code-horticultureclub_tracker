json.extract! event, :id, :event_type, :start_date, :end_date, :start_time, :end_time, :description, :points, :members_attended, :created_at, :updated_at
json.url event_url(event, format: :json)
