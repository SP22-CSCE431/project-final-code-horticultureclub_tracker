# frozen_string_literal: true

class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_type, :start_date, :end_date, :start_time, :end_time, :description, :points
end
