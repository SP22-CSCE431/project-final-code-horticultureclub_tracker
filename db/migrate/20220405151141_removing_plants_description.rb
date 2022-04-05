class RemovingPlantsDescription < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :description
  end
end
