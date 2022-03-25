class AddImageData < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :image_data, :text
  end
end
