# frozen_string_literal: true

class Event < ApplicationRecord
  validates :event_type, :start_date, :description, :points, presence: true

  # has_many :points, dependent: :destroy
  # has_many :members, through: :points
end
