class AddingPlantsColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :quantity, :integer
    add_column :plants, :growth, :string
  end
end
