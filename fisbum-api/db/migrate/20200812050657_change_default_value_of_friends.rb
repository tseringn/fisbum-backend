class ChangeDefaultValueOfFriends < ActiveRecord::Migration[6.0]
  def change
    change_column :friends, :friendship_score, :integer, :default => 0 
  end
end
