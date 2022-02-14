class Plant < ApplicationRecord
    validates :plant_id, presence: true
    validates :name, presence: true
    validates :price, presence: true
	validates :description, presence: true
	validates :icon, presence: true
end
