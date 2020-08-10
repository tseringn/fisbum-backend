class CreateApiV1Requests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.integer :requested_id

      t.timestamps
    end
  end
end
