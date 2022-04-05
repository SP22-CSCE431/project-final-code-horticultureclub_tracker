class RemovingPlantsGrowth < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :growth
  end
end
