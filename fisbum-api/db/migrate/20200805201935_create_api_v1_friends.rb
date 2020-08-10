class CreateApiV1Friends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.integer :my_friend_id
      t.integer :friendship_score

      t.timestamps
    end
  end
end
