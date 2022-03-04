class RenameIcon < ActiveRecord::Migration[6.1]
  def change
    rename_column :plants, :icon, :category
  end
end
