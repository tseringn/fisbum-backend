class CreateApiV1Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.integer :phone_number
      t.boolean :private
      t.string :country
      t.string :bio
      t.string :status
      t.integer :fisbums
      t.string :location

      t.timestamps
    end
  end
end
