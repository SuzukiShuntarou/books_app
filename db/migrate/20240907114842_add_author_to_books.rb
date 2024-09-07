class AddAuthorToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :author, :string
  end
end
