class RemoveMembersAttended < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :members_attended
  end
end
