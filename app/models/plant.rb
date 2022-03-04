# frozen_string_literal: true

class Plant < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
