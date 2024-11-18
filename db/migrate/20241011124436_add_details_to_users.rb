class AddDetailsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :username, :string
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :bio, :text
  end
end
