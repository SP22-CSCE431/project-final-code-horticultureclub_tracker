# frozen_string_literal: true

json.extract!(position, :id, :member_id, :position_name, :created_at, :updated_at)
json.url(position_url(position, format: :json))
