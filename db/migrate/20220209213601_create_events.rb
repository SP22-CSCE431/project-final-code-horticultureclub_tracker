class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_type
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :description
      t.integer :points
      t.string :members_attended

      t.timestamps
    end
  end
end
