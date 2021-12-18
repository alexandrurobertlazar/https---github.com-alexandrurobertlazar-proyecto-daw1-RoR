class AddNameToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :name, :string
    add_column :products, :category, :string
    add_column :products, :subcategory, :string
    add_column :products, :picture, :string
    add_column :products, :price, :decimal
    add_column :products, :oldPrice, :decimal
    add_column :products, :description, :text
    add_column :products, :attributes, :string
    add_column :products, :quality, :string
    add_column :products, :company, :string
    add_column :products, :delivery, :string
    add_column :products, :delivery_time, :string
    add_column :products, :stock, :string
    add_column :products, :bestseller, :boolean
  end
end
