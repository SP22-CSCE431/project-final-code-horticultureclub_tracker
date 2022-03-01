class RemovePointsFromPoints < ActiveRecord::Migration[6.1]
  def change
    remove_column :points, :points, :integer
  end
end
