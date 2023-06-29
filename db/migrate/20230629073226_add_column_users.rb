class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :profile, :text 
    add_column :users, :email, :string 
    add_column :users, :password_digest, :string
  end
end
