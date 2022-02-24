class RemoveEventsAttended < ActiveRecord::Migration[6.1]
  def change
    remove_column :members, :events_attended
  end
end
