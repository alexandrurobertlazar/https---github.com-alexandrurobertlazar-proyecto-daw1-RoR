class DropAllTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :users
    drop_table :carts
    drop_table :categories
    drop_table :products
  end
end
