class CreateFigures < ActiveRecord::Migration[6.1]
  def change
    create_table :figures do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.string :picture
      t.decimal :price
      t.decimal :oldPrice
      t.text :description
      t.string :attributes
      t.string :quality
      t.string :company
      t.string :delivery
      t.string :delivery_time
      t.string :stock
      t.boolean :bestseller

      t.timestamps
    end
  end
end
