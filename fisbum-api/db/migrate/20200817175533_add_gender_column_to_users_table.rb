class AddGenderColumnToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sex, :string
    change_column :users, :img_url, :string, :default => 'https://brandyourself.com/blog/wp-content/uploads/linkedin-profile-picture-too-close.png'
  end
end
