class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :member_id
      t.string :position_name

      t.timestamps
    end
  end
end
