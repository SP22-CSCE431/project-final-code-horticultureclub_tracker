class RemovePlantIdFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :plant_id, :integer
  end
end
