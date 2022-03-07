class CreateImagefiles < ActiveRecord::Migration[6.1]
  def change
    create_table :imagefiles do |t|
      t.integer :member_id

      t.timestamps
    end
  end
end
