class AddColumnsToPortvolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portvolios, :thumb_image, :text
    add_column :portvolios, :main_image, :text
  end
end
