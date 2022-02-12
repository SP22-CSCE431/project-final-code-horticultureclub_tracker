class Point < ApplicationRecord
    validates :member_id, presence: true
    validates :event_id, presence: true
    #validates :points, presence: true
end
