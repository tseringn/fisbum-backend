class ChangeFollowsColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :requested_id, :requesting_id
  end
end
