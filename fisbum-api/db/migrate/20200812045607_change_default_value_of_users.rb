class ChangeDefaultValueOfUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :fisbum_count, :integer, :default => 0

  end
end
