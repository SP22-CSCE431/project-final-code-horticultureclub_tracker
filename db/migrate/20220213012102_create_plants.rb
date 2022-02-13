class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
	  t.integer :plant_id
	  t.string :name
	  t.decimal :price
	  t.string :description
	  t.string :icon
	  
      t.timestamps
    end
  end
end
