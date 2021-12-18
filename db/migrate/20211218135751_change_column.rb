class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :figures, :attributes, :figure_attributes
  end
end
