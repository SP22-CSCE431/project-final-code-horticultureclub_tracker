# frozen_string_literal: true

class Point < ApplicationRecord
  validates :member_id, presence: true
  validates :event_id, presence: true
  # validates :points, presence: true

  # belongs_to :member
  # belongs_to :event
end
