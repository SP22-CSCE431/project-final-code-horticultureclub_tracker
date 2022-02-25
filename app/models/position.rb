# frozen_string_literal: true

class Position < ApplicationRecord
  validates :member_id, presence: true
  validates :position_name, presence: true
end
