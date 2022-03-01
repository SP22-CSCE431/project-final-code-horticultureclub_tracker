# frozen_string_literal: true

json.extract!(member, :id, :name, :events_attended, :created_at, :updated_at)
json.url(member_url(member, format: :json))
