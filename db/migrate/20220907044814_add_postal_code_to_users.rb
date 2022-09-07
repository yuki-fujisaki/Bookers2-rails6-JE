class AddPostalCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :postal_code, :integer, null: false
    add_column :users, :prefecture_code, :string, null: false
    add_column :users, :street, :string, null: false
    add_column :users, :other_address, :string
  end
end
