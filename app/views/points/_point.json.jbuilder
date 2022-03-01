# frozen_string_literal: true

json.extract!(point, :id, :member_id, :event_id, :points, :created_at, :updated_at)
json.url(point_url(point, format: :json))
