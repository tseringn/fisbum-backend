class CreateApiV1Fisbums < ActiveRecord::Migration[6.0]
  def change
    create_table :fisbums do |t|
      t.integer :fisbumer_id
      t.integer :fisbuming_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
