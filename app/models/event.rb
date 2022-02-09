class Event < ApplicationRecord
    validates :event_type, :start_date, :description, :points, presence: true
end
