class CreateImagefiles < ActiveRecord::Migration[6.1]
  def change
    create_table :imagefiles do |t|
      t.string :title

      t.timestamps
    end
  end
end
