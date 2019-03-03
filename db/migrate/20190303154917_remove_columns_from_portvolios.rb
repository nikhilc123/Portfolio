class RemoveColumnsFromPortvolios < ActiveRecord::Migration[5.1]
  def change
    remove_column :portvolios, :main_image, :text
    remove_column :portvolios, :thumb_image, :text
  end
end
