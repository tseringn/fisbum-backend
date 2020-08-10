class RemoveFriendIdFromFisbum < ActiveRecord::Migration[6.0]
  def change
    remove_column :fisbums, :friend_id, :integer
  end
end
