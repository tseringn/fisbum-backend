class RenameColumnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :private, :pvt
  end
end
