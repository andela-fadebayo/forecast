class AddColumnsToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :username, :string
    add_column :guests, :first_name, :string
    add_column :guests, :last_name, :string
    add_column :guests, :image, :string
    add_column :guests, :sex, :string
    add_column :guests, :birthday, :date

    add_index :guests, :username, unique: true
  end
end
