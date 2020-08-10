class RenameColumnFromFisbumsToFisbumCounts < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :fisbums, :fisbum_count
  end
end
