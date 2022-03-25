# frozen_string_literal: true

class Member < ApplicationRecord
  validates :name, presence: true
  include ImageUploader::Attachment(:image)
  # has_many :points, dependent: :destroy
  # has_many :events, through: :points
end
